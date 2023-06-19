from metalift.analysis import CodeInfo, analyze
from metalift.ir import Ge, IntLit, Call, Int, Choose, Eq, Synth, Gt, Le, Implies


def ml_list_length(lst):
    return Call("list_length", Int(), lst)


def grammar(ci: CodeInfo):
    name = ci.name

    if name.startswith("inv0"):
        # Invariant
        an_input = Choose(*ci.readVars)
        input_m = ci.readVars[0]
        loop_d_i32 = ci.modifiedVars[0]
        loop_j_i32 = ci.modifiedVars[-1]

        valid = Gt(ml_list_length(an_input), IntLit(1))
        # This enforces the pre-loop invariant condition, that the outer looping index
        # is always at least 0.
        preloop = Ge(loop_j_i32, IntLit(0))
        postloop = Le(loop_j_i32, input_m)
    elif name.startswith("inv1"):
        # Invariant
        an_input = Choose(*ci.readVars)
        input_m = ci.readVars[0]
        input_rowstr = ci.readVars[2]
        loop_d_i32 = ci.modifiedVars[0]
        loop_k_i32 = ci.modifiedVars[-1]

        # This enforces the pre-loop invariant condition, that the inner looping index
        # is always at least rowstr[j].
        preloop = Ge(loop_k_i32, )
    else:
        # Post condition
        an_input = Choose(*ci.readVars)
        output = Choose(*ci.modifiedVars)
        input_m = ci.readVars[0]

        valid = Gt(ml_list_length(an_input), IntLit(1))
        check_ans_size = Eq(ml_list_length(output), input_m)
        summary = Implies(valid, check_ans_size)
        return Synth(name, summary, *ci.modifiedVars, *ci.readVars)


def runner():
    filename = "tests/llvm/spmv.ll"
    fnName = "test"
    loopsFile = "tests/llvm/spmv.loops"
    cvcPath = "cvc5"

    (vars, invAndPs, preds, vc, loopAndPsInfo) = analyze(filename, fnName, loopsFile, log=False)
    print("Vars: ", vars)
    print("Inv and Ps: ", invAndPs)
    print("Preds: ", preds)
    print("Vc: ", vc)
    print("Loop and ps info: ", loopAndPsInfo)


if __name__ == '__main__':
    runner()
