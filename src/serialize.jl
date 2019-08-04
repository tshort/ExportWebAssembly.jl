
"""
A context structure for holding state related to serializing Julia
objects. A key component is an `IOBuffer` used to hold the serialized 
result.
"""
struct SerializeContext
    io::IOBuffer
    types::Dict{Any,Any}
    tuples::Dict{Any,Any}
end
SerializeContext(io::IOBuffer = IOBuffer()) = SerializeContext(io, Dict(), Dict())

"""
    serialize(ctx::SerializeContext, x)

Serialize `x` into the context object `ctx`. `ctx.io` is the `IOBuffer` where the 
serialized results are stored. Get the result with `take!(ctx.io)`.

This function returns an expression that will deserialize the object. Several `serialize`
methods can be called recursively to build up deserialization code for nested objects.
The expression returned is meant to be `eval`ed into a function that can be called
to do the serialization.

The deserialization code should be pretty low-level code that can be compiled
relatively easily. It especially shouldn't use global variables.

Serialization / deserialization code can use `ctx` to hold state information. 

Some simple types like boxed variables do not need to write anything to `ctx.io`. 
They can return an expression that directly creates the object.
"""
function serialize(ctx::SerializeContext, @nospecialize(x))
    # TODO: fix this major kludge.
    if nfields(x) > 0
        return Expr(:tuple, (serialize(ctx, getfield(x,i)) for i in 1:nfields(x))...)
    end
end

function serialize(ctx::SerializeContext, x::String)
    advance!(ctx.io)
    v = Vector{UInt8}(x)
    ioptr = ctx.io.ptr
    write(ctx.io, v)
    quote
        p = Vptr + $(ioptr - 1)
        len = $(length(v))
        unsafe_string(p, len)
    end
end

# Define functions that return an expression. Example:
#    serialize(ctx::SerializeContext, x::Int) = :(ccall(:jl_box_int64, Any, (Int,), $x))
for (fun, type) in (:jl_box_int64 => Int64,     :jl_box_int32 => Int32,    :jl_box_int8 => Int16,    :jl_box_int8 => Int8,
                    :jl_box_uint64 => UInt64,   :jl_box_uint32 => UInt32,  :jl_box_uint8 => UInt16,  :jl_box_uint8 => UInt8,
                    :jl_box_voidpointer => Ptr{Cvoid},
                    :jl_box_float64 => Float64, :jl_box_float32 => Float32)
    @eval serialize(ctx::SerializeContext, x::$type) = Expr(:call, :ccall, QuoteNode($(QuoteNode(fun))), Any, Expr(:tuple, $type), x)
end
serialize(ctx::SerializeContext, x::Char) = :(ccall(:jl_box_char, Any, (UInt32,), $x))
serialize(ctx::SerializeContext, x::Bool) = :(ccall(:jl_box_bool, Any, (UInt8,), $x))

function serialize(ctx::SerializeContext, a::Tuple)
    Expr(:tuple, (serialize(ctx, x) for x in a)...)
end

function serialize(ctx::SerializeContext, a::Core.SimpleVector)
    Expr(:call, Expr(:., :Core, QuoteNode(:svec)), (serialize(ctx, x) for x in a)...)
end

advance!(io) = write(io, repeat('\0', -rem(io.ptr - 1, 8, RoundUp)))  # Align data to 8 bytes

function serialize(ctx::SerializeContext, a::Array)
    advance!(ctx.io)
    elty = eltype(a)
    dims = size(a)
    ptr1 = ctx.io.ptr
    if isbitstype(elty)
        write(ctx.io, a)
        quote
            p = Vptr + $ptr1 - 1
            unsafe_wrap($(typeof(a)), convert(Ptr{$elty}, p), $dims)
        end
    else
        idx = Int[]
        e = fill(:(), length(a))
        @inbounds for i in eachindex(a)
            if isassigned(a, i)
                e[i] = serialize(ctx, a[i])
                push!(idx, i)
            end
        end
        aname = gensym()
        resulte = [quote
            $aname = Array{$elty, $(length(dims))}(undef, $dims)
        end]
        for i in idx
            push!(resulte, quote
                # unsafe_store!(pointer($aname), $(e[i]), $i)
                unsafe_store!(convert(Ptr{Any}, pointer($aname)), $(e[i]), $i)
                # unsafe_store!(convert(Ptr{Csize_t}, pointer($aname)), pointer_from_objref($(e[i])), $i)
                # @inbounds $aname[$i] = $(e[i])
            end)
        end
        push!(resulte, :($aname = $aname))
        Expr(:block, resulte...)
    end
end
