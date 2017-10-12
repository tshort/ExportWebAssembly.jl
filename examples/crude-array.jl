module VectorExample

export CrudeVector

malloc(x) = Base.llvmcall(
    ("declare i32 @malloc(i32)",
      """
      %2 = tail call i32 @malloc(i32 %0)
      ret i32 %2
      """), 
    Ptr{Int8}, Tuple{Int32}, x)

# # For testing with regular Julia
# malloc(x) = ccall(:malloc, Ptr{Int8}, (Int,), x)

struct CrudeVector{T} <: AbstractVector{T}
    ptr::Ptr{T}
    len::Int 
    maxlen::Int 

    function CrudeVector{T}(len::Int) where {T}
        multiplier = 4
        maxlen = multiplier * len
        nbytes = sizeof(T)
        ptr = Base.unsafe_convert(Ptr{T}, malloc(Int32(nbytes * maxlen)))
        new{T}(ptr, len, maxlen)
    end
end

function CrudeVector(args...)
    n = length(args)
    T = promote_type(typeof.(args)...)
    res = CrudeVector{T}(n)
    for i in 1:n
        res[i] = args[i]
    end
    res
end

@inline function Base.getindex(x::CrudeVector{T}, i::Integer) where {T}
    # @assert 0 < i <= x.len
    Base.unsafe_load(x.ptr, i)    
end

@inline function Base.setindex!(x::CrudeVector{T}, val, i::Integer) where {T}
    # @assert 0 < i <= x.len
    Base.unsafe_store!(x.ptr, convert(T, val), i)    
end

Base.size(x::CrudeVector) = (x.len,)

Base.IndexStyle(::Type{T}) where T <: CrudeVector = IndexLinear()

Base.similar(A::CrudeVector{T}, ::Type{T}, dims::Dims) where {T} =
    CrudeVector{T}(dims[1])

end # module

function myfun(i)
    x = VectorExample.CrudeVector{Int32}(3)
    x[3] = 1
    x[2] = i
    x[1] = 3
    # sum(x)   # Fails if I return this--too complicated, I guess.
    x[1] + x[2]
end

@show VectorExample.CrudeVector(3,8)
@show myfun(4)

using ExportWebAssembly
export_bitcode("myfun.bc", myfun, Tuple{Int32})

## In shell:
# emcc myfun.bc -o myfun.js -s LINKABLE=1 -s EXPORT_ALL=1
## In node:
# a =require("./myfun.js")
# a._myfun(4)
