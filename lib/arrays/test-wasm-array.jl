
include("wasm-vector.jl")

using .WASMVector

using ExportWebAssembly

function myfun(p)
    x = WVector{Float64}(p, 4)
    x[1] + x[2]
end

@code_warntype myfun(Int32(1))
irgen(myfun, Tuple{Int32}, optimize = true)
write_wasm("myfun.wasm", myfun, Tuple{Int32})
wasm2wast("myfun.wasm")

function myfun2(i)
    x = WVector{Int8}(WASMVector.S"hello", 6)
    x[i]
end

@code_warntype myfun2(Int32(1))
irgen(myfun2, Tuple{Int32}, optimize = true)
write_wasm("myfun2.wasm", myfun2, Tuple{Int32})
wasm2wast("myfun2.wasm")

function myfun3(i)
    x = WVector{Float64}(Int32(6))
    x[i] = 3.0
    x[1] + x[i]
end

@code_warntype myfun3(Int32(1))
irgen(myfun3, Tuple{Int32}, optimize = true)
write_wasm("myfun3.wasm", myfun3, Tuple{Int32}, linkwith = ("../memory/memory-utils.o", "../memory/emmalloc.o"))
#write_wasm("myfun3.wasm", myfun3, Tuple{Int32})
