
"""
Returns a `Dict` mapping function address to symbol name for all `ccall`s and
`cglobal`s called from the function. This descends into other invocations
within the function.
"""
find_ccalls(@nospecialize(f), @nospecialize(tt)) = find_ccalls(reflect(f, tt))

function find_ccalls(ref::Reflection)
    result = Dict{Ptr{Nothing}, Symbol}()
    foreigncalls = filter((c) -> lookthrough(identify_foreigncall, c), ref.CI.code)
    for fc in foreigncalls
        sym = getsym(fc[2].args[1])
        address = eval(:(cglobal($(sym))))
        result[address] = sym isa Tuple ? sym[1] : sym.value
    end
    cglobals = filter((c) -> lookthrough(c -> c.head === :call && c.args[1] isa GlobalRef &&
                                              c.args[1].name == :cglobal, c), ref.CI.code)
    for fc in cglobals
        sym = getsym(fc[2].args[2])
        address = eval(:(cglobal($(sym))))
        result[address] = sym isa Tuple ? sym[1] : sym.value
    end
    invokes = filter((c) -> lookthrough(identify_invoke, c), ref.CI.code)
    invokes = map((arg) -> process_invoke(DefaultConsumer(), ref, arg...), invokes)
    for fi in invokes
        canreflect(fi) || continue
        merge!(result, find_ccalls(reflect(fi)))
    end
    return result
end

getsym(x::QuoteNode) = x
getsym(x::Expr) = eval.((x.args[2], x.args[3]))


function fix_ccalls!(mod::LLVM.Module, d)
    changed = false
    for fun in functions(mod), blk in blocks(fun), instr in instructions(blk)
        if instr isa LLVM.CallInst
            dest = called_value(instr)
            if dest isa ConstantExpr && occursin("inttoptr", string(dest))
                argtypes = [llvmtype(op) for op in operands(instr)]
                num_extra_args = 1 + length(collect(eachmatch(r"jl_roots", string(instr))))
                ptr = Ptr{Cvoid}(convert(Int, first(operands(dest))))
                if haskey(d, ptr)
                    sym = d[ptr]
                    newdest = LLVM.Function(mod, string(sym), LLVM.FunctionType(llvmtype(instr), argtypes[1 : end - num_extra_args]))
                    LLVM.linkage!(newdest, LLVM.API.LLVMExternalLinkage)
                    replace_uses!(dest, newdest)
                    changed = true
                end
            end
        end
    end
    return changed
end
