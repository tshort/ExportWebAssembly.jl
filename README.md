# ExportWebAssembly

**This package is very experimental.**

The main purpose of this package is to generate WebAssembly and/or JavaScript from Julia code.

Example:

```julia
myfun(x) = sum((x, x, 1.0))

export_bitcode("myfun.bc", myfun, Tuple{Float64})
```
This generates an LLVM bitcode file in WebAssembly format that can be converted with Emscripten/Binaryen to WebAssembly.

Note that there's nothing in place (yet) to actually convert to WebAssembly.

This package uses the awesome [LLVM.jl package](https://github.com/maleadt/LLVM.jl). It includes code directly adapted from [CUDAnative.jl](https://github.com/JuliaGPU/CUDAnative.jl/). LLVM.jl requires special installation instructions--it requires a source build of Julia (see their site for more info).

