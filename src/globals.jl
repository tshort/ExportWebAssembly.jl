
"""
Returns a `Dict` mapping function address to symbol name for all `GlobalRef`s
referenced from the function. This descends into other invocations
within the function.

Note: this will also return MethodInstances.
"""
find_globals(@nospecialize(f), @nospecialize(tt)) = find_globals(reflect(f, tt))

function find_globals(ref::Reflection)
    result = Dict{Ptr{Nothing}, Any}()
    globals = filter(c -> lookthrough(c -> any(x -> !isimmutable(x) || x isa GlobalRef, c.args), c), 
                     ref.CI.code)
    for gl in globals
        for c in gl[2].args
            if !isimmutable(c)
                result[pointer_from_objref(c)] = c
            elseif c isa GlobalRef
                obj = eval(c)
                if !isimmutable(obj)
                    result[pointer_from_objref(obj)] = obj
                end
            end
        end
    end
    invokes = filter((c) -> lookthrough(identify_invoke, c), ref.CI.code)
    invokes = map((arg) -> process_invoke(DefaultConsumer(), ref, arg...), invokes)
    for fi in invokes
        canreflect(fi) || continue
        merge!(result, find_globals(reflect(fi)))
    end
    return result
end


function fix_globals!(mod::LLVM.Module, d)
    # Create a `jl_init_globals` function.
    jl_init_globals_func = LLVM.Function(mod, "jl_init_globals",
                                         LLVM.FunctionType(julia_to_llvm(Cvoid), LLVMType[]))
    jl_init_global_entry = BasicBlock(jl_init_globals_func, "entry", context(mod))

    # Definitions for utility functions
    func_type = LLVM.FunctionType(julia_to_llvm(Any), LLVMType[LLVM.PointerType(julia_to_llvm(Int8))])
    deserialize_funs = Dict()

    uint8_t = julia_to_llvm(UInt8)

    Builder(context(mod)) do builder
    	for fun in functions(mod), blk in blocks(fun), instr in instructions(blk)
            lastop = Ref{Any}(instr)
            walk(instr) do op
                if occursin("inttoptr", string(op)) && !occursin("addrspacecast", string(op))
                    ptr = Ptr{Cvoid}(convert(Int, first(operands(op))))
                    if haskey(d, ptr)
                        obj = d[ptr]
                        position!(builder, instr)
                        ctx = SerializeContext()
                        e = serialize(ctx, obj)
                        deserialize_funs[ptr] = eval(:($(Symbol(:deserialize_global_, UInt(ptr)))(Vptr) = $e))
                        v = take!(ctx.io)
			gv_typ = LLVM.ArrayType(uint8_t, length(v))
                        data = LLVM.GlobalVariable(mod, gv_typ, "jl.global.data")
                        linkage!(data, LLVM.API.LLVMExternalLinkage)
                        constant!(data, true)
                        LLVM.API.LLVMSetInitializer(LLVM.ref(data), LLVM.API.LLVMConstArray(LLVM.ref(uint8_t), [LLVM.ref(ConstantInt(uint8_t, x)) for x in v], UInt32(length(v))))
                        dataptr = gep!(builder, data, [ConstantInt(0, context(mod)), ConstantInt(0, context(mod))])
                        # Create a pointer to the data.
                        gptr = GlobalVariable(mod, julia_to_llvm(Any), "jl.global")
                        linkage!(gptr, LLVM.API.LLVMInternalLinkage)
			LLVM.API.LLVMSetInitializer(LLVM.ref(gptr), LLVM.ref(null(julia_to_llvm(Any))))
                        gptr2 = load!(builder, gptr) 
			gptr3 = addrspacecast!(builder, gptr2, LLVM.PointerType(eltype(julia_to_llvm(Any)), 10))
                        replace_uses!(lastop[], gptr3)
                        # Create the Julia object from `data` and include that in `init_fun`.
                        position!(builder, jl_init_global_entry)
                        # Call `jl_pchar_to_string(*str, len)`
                        deserialize_global_func = LLVM.Function(mod, string("deserialize_global_", UInt(ptr)), func_type)
                        LLVM.linkage!(deserialize_global_func, LLVM.API.LLVMExternalLinkage)
                        newptr = LLVM.call!(builder, deserialize_global_func, LLVM.Value[dataptr])
                        LLVM.store!(builder, newptr, gptr)
                    end
                    return true
                end
                lastop[] = op
                return false
            end
        end
        ret!(builder)
    end
    for (ptr, dfun) in deserialize_funs
        deser_mod = irgen(dfun, Tuple{Ptr{UInt8}})
        # rename deserialization function to "deserialize_global_*"
        funname = string("deserialize_global_", UInt(ptr))
        fun = first(filter(x -> startswith(LLVM.name(x), string("julia_", funname)), functions(deser_mod)))[2]
        LLVM.name!(fun, funname)
        linkage!(fun, LLVM.API.LLVMExternalLinkage)
        # link into the main module
        LLVM.link!(mod, deser_mod)
    end

end
