module WASMVector

import ExportWebAssembly
export WVector, S_str
using LLVM
using LLVM.Interop

grow_memory(x) = Base.llvmcall(
    ("declare i8* @llvm.wasm.grow.memory.i32(i32)",
      """
      %2 = tail call i8* @llvm.wasm.grow.memory.i32(i32 %0)
      ret i8* %2
      """), 
    Ptr{Int8}, Tuple{Int32}, x)


struct Ptr32{T}
    address::Int32
end

mutable struct Memory
    base::Int32
    nextopen::Int32
end
Memory(x) = Memory(x, x)
const MEM = Memory(Int32(0))

struct WVector{T} <: AbstractVector{T}
    ptr::Ptr32{T}
    len::Int32
    maxlen::Int32
end
WVector{T}(ptr::Ptr32{T}, len::Integer) where {T} = WVector{T}(ptr, Int32(len), Int32(len))
WVector{T}(addr::Int32, len::Integer) where {T} = WVector{T}(Ptr32{T}(addr), len)
function WVector{T}(len::Integer) where {T}
    multiplier = 4
    maxlen = multiplier * len
    nbytes = sizeof(T)
    ptr = Ptr32{T}(MEM.nextopen)
    MEM.nextopen += nbytes * maxlen
    WVector{T}(ptr, len, maxlen)
end

function WVector(args...)
    n = length(args)
    T = promote_type(typeof.(args)...)
    res = WVector{T}(n)
    for i in 1:n
        res[i] = args[i]
    end
    res
end

# function WVector(x::Vector{T}) where {T}
#     res = WVector{T}(length(x))
#     res .= x
#     res
# end

@inline function Base.getindex(x::WVector{T}, i::Integer) where {T}
    # @assert 0 < i <= x.len
    unsafe_load(x.ptr, Int32(i))
end

@generated function Base.unsafe_load(p::Ptr32{T}, i::Int32) where {T}
    lt = ExportWebAssembly.llvmtype(T)
    runstr = """
        %pa = inttoptr i32 %0 to $lt*
        %pe = getelementptr $lt, $lt* %pa, i32 %1
        %ret = load $lt, $lt* %pe
        ret $lt %ret
        """
    quote
        Base.llvmcall($runstr, $T, Tuple{Int32, Int32}, p.address, Int32(i - 1))
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

using .WASMVector

using ExportWebAssembly

function myfun(p, i)
    z = WASMVector.S"hello"
    x = WVector{UInt8}(z, i)
    x[2] = UInt8(3)
    x[Int(i)] - x[2]
    # sum(x)
end

@code_warntype myfun(Int32(1), Int32(2))
# irgen(myfun, Tuple{Int32,Int32}, optimize = false)
irgen(myfun, Tuple{Int32,Int32}, optimize = true)
export_bitcode("myfun.bc", myfun, Tuple{Int32, Int32})
run(`llc myfun.bc -filetype obj -o myfun.o`)
run(`lld -flavor wasm myfun.o --no-entry --allow-undefined -o myfun.wasm`)
run(`wasm2wast myfun.wasm`)

# function myfun(i)
#     x = WVector{Int8}(WASMVector.S"hello", Int32(6))
#     x[i]
#     # x = WASMVector.S"hello"
#     # x[i]
#     # sum(x)
# end

# macroexpand(:(WASMVector.@S_str("hello")))

# InteractiveUtils.@code_llvm_raw myfun(Int32(1), Int32(3))
# @code_warntype myfun(Int32(1))
# irgen(myfun, Tuple{Int32}, optimize = false)
# irgen(myfun, Tuple{Int32})
# export_bitcode("myfun.bc", myfun, Tuple{Int32})
# run(`llc myfun.bc -filetype obj -o myfun.o`)
# run(`lld -flavor wasm myfun.o --no-entry --allow-undefined -o myfun.wasm`)
# run(`wasm2wast myfun.wasm`)

# using LLVM
# using LLVM.Interop
# @generated function myfun(i)
#     T_int = LLVM.IntType(sizeof(Int)*8, JuliaContext())
#     T_int8 = LLVM.IntType(8, JuliaContext())
#     llvmf, _ = create_function(T_int8, [T_int])
#     # generate IR
#     Builder(JuliaContext()) do builder
#         entry = BasicBlock(llvmf, "entry", JuliaContext())
#         position!(builder, entry)
#         s = globalstring!(builder, "foobar")
#         p = gep!(builder, s, [LLVM.ConstantInt(T_int, 0), parameters(llvmf)[1]])
#         val = load!(builder, bitcast!(builder, p, LLVM.PointerType(T_int8)))
#         ret!(builder, val)
#         # ret!(builder, parameters(llvmf)[1])
#     end
#     call_function(llvmf, Int8, Tuple{Int}, :((i,)))
# end
# # myfun(1)
# irgen(myfun, Tuple{Int}, optimize = false)
# irgen(myfun, Tuple{Int}, optimize = true)
# export_bitcode("myfun.bc", myfun, Tuple{})
# run(`llc myfun.bc -filetype obj -o myfun.o`)
# run(`lld -flavor wasm myfun.o --no-entry --allow-undefined -o myfun.wasm`)
# run(`wasm2wast myfun.wasm`)
