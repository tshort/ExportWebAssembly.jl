using ExportWebAssembly

include("../../lib/arrays/wasm-array.jl")
using .WASMVector

function arrsum(addr)
    y = asvec(Float32, addr)
    result = Float32(0)
    for x in y
	result += x
    end
    result
end

@code_warntype arrsum(Int32(1))

write_wasm("main.wasm", arrsum, Tuple{Int32}, linkwith = ("../../lib/memory/memory-utils.o", "../../lib/memory/emmalloc.o"))
