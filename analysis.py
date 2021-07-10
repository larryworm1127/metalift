import re
from collections import namedtuple

from ir import Expr, MLInstruction
from vc import Block

def setupBlocks(blks):
  bbs = dict((b.name, Block(b.name, list(b.instructions))) for b in blks)

  for b in bbs.values():
    i = b.instructions[-1]
    opcode = i.opcode
    ops = list(i.operands)

    if opcode == "br":
      targets = ops[0:] if len(ops) == 1 else ops[1:]
    elif opcode == "switch":
      targets = ops[1::2]
    elif opcode == "ret":
      targets = []
    else: raise Exception("Unknown end block inst: %s" % i)

    b.succs = [bbs[t.name] for t in targets]

    for t in targets:
      bbs[t.name].preds.append(b)

  return bbs

def parseLoops(filename, fnName):
  with open(filename, mode="r") as f:
    foundLines = []
    found = False
    for l in f.readlines():
      if re.match("Printing analysis 'Natural Loop Information' for function '%s':" % fnName, l):
        found = True
      elif found:
        m = re.match("Loop at depth \d+ containing: (\S+)", l.strip())
        if m:
          foundLines.append(m.group(1))
        elif re.match("Printing analysis 'Natural Loop Information' for function '\S+':", l):
          found = False

    LoopInfo = namedtuple("LoopInfo", ["header", "body", "exits", "latches"])

    loops = []
    for m in foundLines:
      header = []
      body = []
      exits = []
      latches = []

      blks = m.replace("%", "").split(",")
      for b in blks:
        name = re.search("([^<]+)", b).group(0)
        print("name: %s" % b)
        if "<header>" in b: header.append(name)
        if "<exiting>" in b: exits.append(name)
        if "<latch>" in b: latches.append(name)
        if "<header>" not in b and "<exiting>" not in b and "latch" not in b: body.append(name)

      loops.append(LoopInfo(header, body, exits, latches))

    for l in loops:
      print("found loop: header: %s, body: %s, exits: %s, latches: %s" % (l.header, l.body, l.exits, l.latches))

    return loops

invNum = 0
def processLoops(header, body, exits, latches, fnArgs):
  global invNum
  inv = "inv%s" % invNum
  invNum = invNum + 1

  havocs = []
  for blk in [header, *body, *exits, *latches]:
    for i in blk.instructions:
      opcode = i.opcode
      ops = list(i.operands)
      if opcode == "store":
        havocs.append(ops[1])

  # remove back edges, and replace br with assert inv
  for l in latches:
    l.succs.remove(header)
    header.preds.remove(l)
    l.instructions[-1] = MLInstruction("assert", Expr.Pred(inv, Expr.Type.Bool,
                                                           *[MLInstruction("load", h) for h in havocs],
                                                           *fnArgs))

  # prepend assume inv to header
  header.instructions.insert(0, MLInstruction("assume", Expr.Pred(inv, Expr.Type.Bool,
                                                                  *[MLInstruction("load", h) for h in havocs],
                                                                  *fnArgs)))

  # prepend havocs to header
  if havocs:
    header.instructions.insert(0, MLInstruction("havoc", *havocs))

  # append assert inv initialization to header's predecessor
  for p in header.preds:
    p.instructions.insert(-1, MLInstruction("assert", Expr.Pred(inv, Expr.Type.Bool,
                                                                *[MLInstruction("load", h) for h in havocs],
                                                                *fnArgs)))

  print("header preds:")
  for p in header.preds:
    for i in p.instructions:
      print("%s" % i)

  print("header:")
  for i in header.instructions:
    print("%s" % i)

  # print("exits:")
  # for e in exits:
  #   for i in e.instructions:
  #     print("%s" % i)

  print("latches:")
  for l in latches:
    print("%s: succ: %s" % (l.name, l.succs))
    for i in l.instructions:
      print("%s" % i)


def processBranches(blocksMap, fnArgs):
  for b in blocksMap.values():
    opcode = b.instructions[-1].opcode
    ops = list(b.instructions[-1].operands)

    if opcode == "br" and len(ops) > 1:  # a conditional branch
      # XXX: bug in llvmlite that switches the ordering of succs
      b.succs[1].instructions.insert(0, MLInstruction("assume", ops[0]))
      b.succs[0].instructions.insert(0, MLInstruction("assume", Expr.Not(ops[0])))

    elif opcode == "switch":
      targets = ops[3::2]
      vals = ops[2::2]
      for t,v in zip(targets, vals):
        blocksMap[t.name].instructions.insert(0, MLInstruction("assume", Expr.Eq(ops[0], v)))

      # default fallthrough
      blocksMap[ops[1].name].instructions.insert(0, MLInstruction("assume",
                                                    Expr.Not(Expr.Or( *[(Expr.Eq(ops[0], v)) for v in vals]))))

    elif opcode == "ret":
      b.instructions.insert(-1, MLInstruction("assert", Expr.Pred("ps", Expr.Type.Bool, ops[0], *fnArgs)))
