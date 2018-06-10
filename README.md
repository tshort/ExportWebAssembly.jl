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

[WebAssembly](http://webassembly.org/) is a new standard for running compiled code in a web browser. If Julia can generate WebAssembly, it opens up many opportunities to embed Julia "apps" in web interfaces. Julia is well positioned here because Julia can already compile efficient LLVM bitcode. LLVM bitcode can be translated into WebAssembly by [Emscripten](http://emscripten.org/) or with a direct LLVM [backend](https://github.com/llvm-mirror/llvm/tree/master/lib/Target/WebAssembly).

I have explored several approaches to generate WebAssembly. The two most promising approaches to generate WebAssembly are outlined as follows.

1. **CUDAnative approach** – That's the approach in the master branch of this repository. It uses code from the [CUDAnative package](https://github.com/JuliaGPU/CUDAnative.jl) to produce LLVM bitcode on the fly. It works great for simple code (type stable code with no use of libjulia or other C functions). Math code that uses immutable structs and/or StaticArrays works well with this approach. The main downside is that it is so limited–-no arrays, no strings, no IO, etc. This approach could be extended to substitute out libjulia-type functions with equivalents that work in JavaScript/WebAssembly. For example, [this](https://github.com/tshort/ExportWebAssembly.jl/blob/master/examples/crude-array.jl) crude example shows a custom array type that could work with WebAssembly. The main steps necessary to extend this approach are: (1) write a package to create WebAssembly-friendly versions of basic Julia types and operations (Dicts, Strings, Arrays, and printing) and (2) use the [Cassette package](https://github.com/jrevels/Cassette.jl) or another approach to replace standard Julia dispatches involving these basic types with the WebAssembly-friendly versions.

2. **[CodeGen.jl](https://github.com/tshort/CodeGen.jl) approach** – The [codegen-jl branch](https://github.com/tshort/ExportWebAssembly.jl/tree/codegen-jl) of this repository uses this approach. The CodeGen package uses the [LLVM package](https://github.com/maleadt/LLVM.jl) to directly generate bitcode based on code_typed Julia code. This can use libjulia functions (also compiled to LLVM bitcode), so a wider range of Julia code may work. Some decently complex code runs, including some simple array creation and manipulation. But, there are still many gaps that need to be filled in here to be able to run Julia code in general. The main work with this approach is in upgrading the CodeGen package to support more Julia code. This method offers the most control over code generation and may allow the widest Julia code coverage (including code that links to C and Fortran libraries). It may also be wise to swap out libjulia methods with WebAssembly-focused versions. This could limit code size and allow easier integration.

Both of these approaches are on hold (as of March 2018) pending updates to Julia v0.7/1.0. These has been a lot of change in Julia related to the internal representation (IR) and how to access code generation. LLVM may also be upgraded as part of the transition to v1.0. These issues should be settled within a month.


Extras to help compile to wasm and see wast:

```
llc -o this.o -filetype obj this.bc
lld -flavor wasm -o this.wasm --no-entry --allow-undefined this.o
wasm2wast this.wasm
```
