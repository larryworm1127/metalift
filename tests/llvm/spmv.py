from metalift.analysis import CodeInfo, analyze
from metalift.ir import *

from metalift.synthesize_auto import synthesize

DOTPROD = "dotprod"


def ml_list_get(lst, i):
    return Call("list_get", Int(), lst, i)  # returns lst[i]


def ml_dotprod(x, y, lower, upper, colidx):
    return Call(DOTPROD, Int(), x, y, lower, upper, colidx)


def ml_list_length(lst):
    return Call("list_length", Int(), lst)


def grammar(ci: CodeInfo):
    name = ci.name

    if name.startswith("inv0"):
        # Invariant
        an_input = Choose(*ci.readVars)
        input_mat = ci.readVars[-1]
        input_colidx = ci.readVars[2]
        input_vec = ci.readVars[0]
        loop_d_i32 = ci.modifiedVars[0]
        loop_k_i32 = ci.modifiedVars[1]
        loop_j_i32 = ci.modifiedVars[3]
        input_rowstr = ci.readVars[1]

        valid = Gt(ml_list_length(an_input), IntLit(1))
        # This enforces the pre-loop invariant condition, that the outer looping index
        # is always at least 0.
        preloop_j = Choose(Ge(Choose(loop_j_i32, loop_k_i32), IntLit(0)), Gt(Choose(loop_j_i32, loop_k_i32), IntLit(0)))
        postloop_j = Choose(Le(loop_j_i32, ml_list_length(input_mat)), Lt(loop_j_i32, ml_list_length(input_mat)))

        # The modified var d must be equal to the dot product
        dotprod = ml_dotprod(input_vec, input_mat, ml_list_get(input_rowstr, loop_j_i32),
                             ml_list_get(input_rowstr, Add(loop_j_i32, IntLit(1))), input_colidx)
        inv_d = Eq(loop_d_i32, dotprod)

        # Inner loop value must be greater or equal to rowstr[j]
        list_item = ml_list_get(input_rowstr, IntLit(0))
        preloop_k = Choose(Ge(loop_k_i32, list_item), Gt(loop_k_i32, list_item))
        postloop_k = Le(loop_k_i32, ml_list_get(input_rowstr, Add(loop_j_i32, IntLit(1))))

        # summary = Implies(valid, And(preloop_j,
        #                              And(postloop_j,
        #                                  And(inv_d,
        #                                      And(preloop_k, postloop_k)))))
        summary = Implies(valid, And(And(preloop_j, postloop_j)))
    elif name.startswith("inv1"):
        # Invariant
        an_input = Choose(*ci.readVars)
        modified = Choose(*ci.modifiedVars)
        loop_k_i32 = ci.modifiedVars[-1]

        valid = Gt(ml_list_length(an_input), IntLit(1))
        # This enforces the pre-loop invariant condition, that the inner looping index
        # is always at least rowstr[j].
        preloop = Choose(Gt(modified, IntLit(0)), Ge(modified, IntLit(0)))
        # summary = Implies(valid, preloop)
        summary = BoolLit(True)
    else:
        # Post condition
        an_input = Choose(*ci.readVars)
        output = Choose(*ci.modifiedVars)
        input_vec = ci.readVars[-1]

        valid = Gt(ml_list_length(an_input), IntLit(1))
        # check_ans_size = Eq(ml_list_length(output), ml_list_length(input_vec))
        check_ans_size = Choose(Gt(ml_list_length(output), IntLit(0)), Ge(ml_list_length(output), IntLit(0)))
        summary = Implies(valid, check_ans_size)

    return Synth(name, summary, *ci.modifiedVars, *ci.readVars)


def targetLang():
    x = Var("x", ListT(Int()))
    y = Var("y", ListT(Int()))
    upper = Var("upper", Int())
    lower = Var("lower", Int())
    colidx = Var("colidx", ListT(Int()))

    def dotprod_body(x, y, lower, upper, colidx):
        curr_prod = Mul(ml_list_get(x, lower), ml_list_get(y, ml_list_get(colidx, lower)))
        recursed = ml_dotprod(x, y, Add(lower, IntLit(1)), upper, colidx)
        return Ite(Lt(lower, Sub(upper, IntLit(1))), curr_prod, Add(curr_prod, recursed))
    dotprod = FnDeclRecursive(DOTPROD, Int(), dotprod_body(x, y, lower, upper, colidx),
                              x, y, lower, upper, colidx)

    return [dotprod]

def runner():
    filename = "tests/llvm/spmv.ll"
    fnName = "test"
    loopsFile = "tests/llvm/spmv.loops"
    cvcPath = "cvc5"
    basename = "spmv"

    (vars, invAndPs, preds, vc, loopAndPsInfo) = analyze(filename, fnName, loopsFile, log=False)
    # print("Vars: ", vars)
    # print("Inv and Ps: ", invAndPs)
    # print("Preds: ", preds)
    # print("Vc: ", vc)
    # print("Loop and ps info: ", loopAndPsInfo)

    invAndPs = [grammar(ci) for ci in loopAndPsInfo]
    candidates = synthesize(
        basename,
        # targetLang(),
        [],
        vars,
        invAndPs,
        preds,
        vc,
        loopAndPsInfo,
        cvcPath
    )

    print("====== verified candidates")
    for c in candidates:
        print(c, "\n")


if __name__ == '__main__':
    runner()
