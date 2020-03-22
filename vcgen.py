import copy
from collections import deque

from visitor import Visitor, PassthruVisitor
import ir
import operator

# labels each variable as either read, written, or both
class VarIdentifier(PassthruVisitor):
  def __init__(self):
    super().__init__(self.__class__.__name__)
    self.write_vars = set()
    self.read_vars = set()

  def visit_BinaryOp(self, n):
    return set().union(*[self.visit(a) for a in n.args])

  def visit_UnaryOp(self, n):
    return set().union(*[self.visit(a) for a in n.args])

  def visit_Call(self, n):
    return set().union(*[self.visit(a) for a in n.args])

  def visit_Choose(self, n):
    raise TypeError("Choose should not appear")

  def visit_Var(self, n):
    return {n}

  def visit_Lit(self, n):
    return set()

  def visit_Field(self, n):
    return {n}

  def visit_Assign(self, n):
    self.write_vars.add(n.left)
    self.read_vars.update(self.visit(n.right))
    return None

  def visit_If(self, n):
    self.read_vars.update(self.visit(n.cond))
    self.visit(n.conseq)
    self.visit(n.alt)
    return None

  # loop, while

  def visit_While(self, n):
    self.read_vars.update(self.visit(n.cond))
    self.visit(n.body)
    return None

  def visit_Return(self, n):
    self.read_vars.update(self.visit(n.body))
    return None

  def visit_Block(self, n):
    for s in n.stmts:
      self.visit(s)
    return None

  def visit_FnDecl(self, n):
    self.visit(n.body)
    return None

  def visit_ExprStmt(self, n):
    self.visit(n.expr)
    return None

  def visit_Assert(self, n):
    self.visit(n.expr)
    return None


class VCGen(Visitor):

  class State:
    def __init__(self):
      self.var = {}
      self.precond = None
      self.fns = []
      self.asserts = []
      self.rv = None

    def __repr__(self):
      return 'vars: %s  \nrv: %s  \ncond: %s  \nfns: %s  \nasserts: %s' % \
             (self.var, self.rv, self.precond, '\n'.join([str(f) for f in self.fns]),
              '\n'.join([str(a) for a in self.asserts]))


  def __init__(self):
    super().__init__(self.__class__.__name__)
    self.state = VCGen.State()
    self.inv_num = 0
    self.info = {}  # maps invariant fn to (loop AST, read vars, write vars)

  def visit_BinaryOp(self, n):
    if isinstance(n.op, ir.Expr):
      return ir.BinaryOp(self.state.var[self.visit(n.op)], *[self.visit(a) for a in n.args])
    else:
      return ir.BinaryOp(n.op, *[self.visit(a) for a in n.args])

  def visit_UnaryOp(self, n):
    if isinstance(n.op, ir.Expr):
      return ir.UnaryOp(self.state.var[self.visit(n.op)], *[self.state.var[self.visit(a)] for a in n.args])
    else:
      return ir.UnaryOp(n.op, *[self.state.var[self.visit(a)] for a in n.args])

  def visit_Call(self, n):
    raise TypeError('NYI')

  def visit_Choose(self, n):
    raise TypeError('NYI')

  def visit_Var(self, n):
    #return n
#    if n not in self.state.var:
#      self.state.var[n] = n
    return self.state.var[n]

  def visit_Lit(self, n):
    return n

  # def visit_Field(self, n):
  #   if n.target == 'operator' and n.name == 'add':
  #     return '+'
  #   elif n.target == 'operator' and n.name == 'sub':
  #     return '-'
  #   else:
  #     raise TypeError('NYI: %s' % self)


  ## statements

  def visit_Assign(self, n):
    if not isinstance(n.left, ir.Var):
      raise TypeError('NYI')

    self.state.var[n.left] = self.visit(n.right)
    return True

  def visit_If(self, n: ir.If):
    cond = self.visit(n.cond)
    s = copy.deepcopy(self.state)

    cons_cont = self.visit(n.conseq)
    cons_state = copy.deepcopy(self.state)

    self.state = s
    alt_cont = self.visit(n.alt)
    alt_state = self.state

    merged_state = VCGen.State()
    # merge
    for v, cons_val in cons_state.var.items():
      alt_val = alt_state.var[v]
      if alt_val != cons_val:
        #print("%s is diff: %s and %s" % (v, cons_val, alt_val))
        merged_state.var[v] = ir.If(cond, cons_val, alt_val)
      else:
        #print("%s is same: %s and %s" % (v, cons_val, alt_val))
        merged_state.var[v] = cons_val

    if alt_state.rv != cons_state.rv:
      merged_state.rv = ir.If(cond, cons_state.rv, alt_state.rv)
    else:
      merged_state.rv = cons_state.rv

    self.state = merged_state
    return True


  def inv(self, loop, read_vars, write_vars, body=ir.Block()):
    name = 'inv' + str(self.inv_num)
    self.inv_num = self.inv_num + 1
    inv_decl = ir.FnDecl(name, read_vars | write_vars, bool, body)
    self.info[inv_decl] = (loop, read_vars, write_vars)
    return inv_decl


  # loop, while
  def visit_While(self, n):
    # create a new invariant function
    wi = VarIdentifier()
    wi.visit(n)
    write_vars = wi.write_vars
    read_vars = set(filter(lambda var: var not in write_vars, self.state.var.keys()))
    inv_vars = read_vars | write_vars

    inv_fn = self.inv(n, read_vars, write_vars)
    self.state.fns.append(inv_fn)

    # add assertion: precondition -> inv
    inv_call = ir.Call(inv_fn.name, *[self.state.var[arg] for arg in inv_vars])
    self.state.asserts.append(ir.implies(self.state.precond, inv_call))

    # create new visitor for the body, and create fresh vars for those that are modified within the loop
    body_visitor = VCGen()
    for v in self.state.var:
      if v in write_vars:
        body_visitor.state.var[v] = ir.Var(v.name, v.type)
      else:
        body_visitor.state.var[v] = self.state.var[v]

    # add assertion: cond & inv -> inv(body)
    inv_prebody_call = ir.Call(inv_fn.name, *[body_visitor.state.var[arg] for arg in inv_vars])

    cond = body_visitor.visit(n.cond)
    body_cont = body_visitor.visit(n.body)
    #print("body: %s" % body_visitor.state)

    inv_body_call = ir.Call(inv_fn.name, *[body_visitor.state.var[arg] for arg in inv_vars])
    self.state.asserts.append(ir.implies(ir.BinaryOp(operator.and_, cond, inv_prebody_call), inv_body_call))

    # create a new var map where modified vars are replaced with fresh ones
    new_state_var = {}
    for v in self.state.var:
      if v in write_vars:
        new_state_var[v] = ir.Var(v.name, v.type)
      else:
        new_state_var[v] = self.state.var[v]
    self.state.var = new_state_var

    # precond is now the !cond & inv
    self.state.precond = ir.BinaryOp(operator.and_, ir.UnaryOp(operator.not_, cond), inv_prebody_call)

    return body_cont

  def visit_Return(self, n):
    r = self.visit(n.body)
    if isinstance(r, ir.Var):
      self.state.rv = self.state.var[r]
    else:
      self.state.rv = r
    return False

  def visit_Block(self, n):
    returned = False
    for s in n.stmts:
      if not self.visit(s):
        returned = True
        break
    return returned

  def visit_FnDecl(self, n):
    # initialize function arguments
    for arg in n.args:
      self.state.var[arg] = arg
    self.state.precond = ir.true()

    self.visit(n.body)

    # generate postcondition
    ps_vars = list(self.state.var.keys())
    wi = VarIdentifier()
    wi.visit(n)
    ps = ir.FnDecl('ps', ps_vars, bool, ir.Block())
    self.info[ps] = (n, wi.read_vars, wi.write_vars)

    ps_call = ir.Call('ps', *[self.state.var[arg] for arg in ps_vars])

    # add precond -> postcond
    self.state.fns.append(ps)
    self.state.asserts.append(ir.implies(self.state.precond, ps_call))

    p = ir.Program(None, self.state.fns + self.state.asserts)
    return p