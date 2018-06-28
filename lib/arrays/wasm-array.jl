module WASMVector

import ExportWebAssembly
export WVector, S_str, asvec
using LLVM
using LLVM.Interop
    
struct Ptr32{T}
    address::Int32
end

@inline malloc(len) = ExportWebAssembly.@extern(:malloc, Int32, Tuple{Int32}, Int32(len))


struct WVector{T} <: AbstractVector{T}
    ptr::Ptr32{T}
    len::Int32
    maxlen::Int32
end
WVector{T}(ptr::Ptr32{T}, len::Integer) where {T} = WVector{T}(ptr, Int32(len), Int32(len))
WVector{T}(addr::Int32, len::Integer) where {T} = WVector{T}(Ptr32{T}(addr), len)
WVector{T}(addr::Int32, len::Integer, maxlen::Integer) where {T} = WVector{T}(Ptr32{T}(addr), len, maxlen)

@inline function WVector{T}(len::Int32) where {T}
    #addr = malloc(27)
    #WVector{T}(addr, Int32(27))
    multiplier = Int32(4)
    maxlen = multiplier * len
    nbytes = Int32(sizeof(T))
    addr = malloc(nbytes * multiplier)
    WVector{T}(addr, len, len * multiplier)
end

#function WVector(args...)
#    n = length(args)
#    T = promote_type(typeof.(args)...)
#    res = WVector{T}(n)
#    for i in 1:n
#        res[i] = args[i]
#    end
#    res
#end

# function WVector(x::Vector{T}) where {T}
#     res = WVector{T}(length(x))
#     res .= x
#     res
# end

@inline function Base.getindex(x::WVector{T}, i::Integer) where {T}
    # @assert 0 < i <= x.len
    myunsafe_load(x.ptr, Int32(i))
end

@generated function myunsafe_load(p::Ptr32{T}, i::Int32) where {T}
    lt = ExportWebAssembly.llvmtype(T)
    runstr = """
        %pa = inttoptr i32 %0 to $lt*
        %pe = getelementptr $lt, $lt* %pa, i32 %1
        %ret = load $lt, $lt* %pe
        ret $lt %ret
        """
    quote
        Base.llvmcall($runstr, $T, Tuple{Int32, Int32}, p.address, i - Int32(1))
    end
end
# function unsafe_load(p::Ptr32{Float64}, i::Int32)
#     runstr = """
#         %pa = inttoptr i32 %0 to double*
#         %pe = getelementptr double, double* %pa, i32 %1
#         %ret = load double, double* %pe
#         ret double %ret
#         """
#     Base.llvmcall(runstr, Float64, Tuple{Int32, Int32}, p.address, i - Int32(1))
# end

@inline function Base.setindex!(x::WVector{T}, val, i::Integer) where {T}
    # @assert 0 < i <= x.len
    # unsafe_store!(x.ptr, convert(T, val), Int32(i))
    unsafe_store!(x.ptr, val, Int32(i))
    x
end

@generated function Base.unsafe_store!(p::Ptr32{T}, x::T, i::Int32) where {T}
    lt = ExportWebAssembly.llvmtype(T)
    runstr = """
        %pa = inttoptr i32 %0 to $lt*
        %pe = getelementptr $lt, $lt* %pa, i32 %2
        store $lt %1, $lt* %pe
        ret void
        """
    quote
        Base.llvmcall($runstr, Nothing, Tuple{Int32, $T, Int32}, p.address, x, i - Int32(1))
    end
end


Base.size(x::WVector) = (x.len,)

Base.IndexStyle(::Type{T}) where T <: WVector = IndexLinear()

Base.similar(A::WVector{T}, ::Type{T}, dims::Dims) where {T} =
    WVector{T}(dims[1])

# Array with AssemblyScript layout for use with wasm-ffi
function asvec(T, addr)
    x = WVector{Int32}(addr, Int32(4))
    WVector{T}(addr + Int32(16), x[3] ÷ Int32(sizeof(T)))
end

macro S_str(s)
    T_i32 = LLVM.IntType(32, JuliaContext())
    llvmf, _ = create_function(T_i32)
    len = length(s) + 1
    # generate IR
    Builder(JuliaContext()) do builder
        entry = BasicBlock(llvmf, "entry", JuliaContext())
        position!(builder, entry)
        s = globalstring!(builder, s)
        i = ptrtoint!(builder, s, T_i32)
        ret!(builder, i)
    end
    e = call_function(llvmf, Int32, Tuple{})
    e
    # quote
    #     WVector{Int8}($e, $len)
    # end
end

end # module



# module VectorStrings

# using ..WASMVector 

# struct VectorString <: AbstractString
#     data::WVector{Int8}
# end

# VectorString(s::String) = VectorString(WVector(Vector{Int8}(s)))

# Base.ncodeunits(s::VectorString) = length(s.data)
# Base.codeunit(s::VectorString) = Int8

# Base.codeunit(s::VectorString, i::Integer) = s.data[i]

# Base.isvalid(s::VectorString, i::Int) = checkbounds(Bool, s, i) && thisind(s, i) == i

# Base.@propagate_inbounds function Base.next(s::VectorString, i::Int)
#     b = Base.codeunit(s, i)
#     u = Int32(b) << 24
#     Base.between(b, 0x80, 0xf7) || return reinterpret(Char, u), i+1
#     return Base.next_continued(s, i, u)
# end
# function Base.next_continued(s::VectorString, i::Int, u::Int32)
#     u < 0xc0000000 && (i += 1; @goto ret)
#     n = ncodeunits(s)
#     # first continuation byte
#     (i += 1) > n && @goto ret
#     @inbounds b = codeunit(s, i)
#     b & 0xc0 == 0x80 || @goto ret
#     u |= Int32(b) << 16
#     # second continuation byte
#     ((i += 1) > n) | (u < 0xe0000000) && @goto ret
#     @inbounds b = codeunit(s, i)
#     b & 0xc0 == 0x80 || @goto ret
#     u |= Int32(b) << 8
#     # third continuation byte
#     ((i += 1) > n) | (u < 0xf0000000) && @goto ret
#     @inbounds b = codeunit(s, i)
#     b & 0xc0 == 0x80 || @goto ret
#     u |= Int32(b); i += 1
# @label ret
#     return reinterpret(Char, u), i
# end
# Base.thisind(s::VectorString, i::Int) = Base._thisind_str(s, i)

# Base.string(ss::VectorString...) = VectorString(vcat((x.data for x in ss)...))
# # macro S_str(s, flags...) VectorString(s) end
# # macro S_mstr(s, flags...) VectorString(s) end

# export VectorString

# end



