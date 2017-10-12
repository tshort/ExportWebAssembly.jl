This Dockerfile is set up with:

* 32-bit Linux

* Julia-dev fork with the following changes:
  - [Change from base] Added a codegen hook just after inference that replaces `ccall`'s with `llvmcall`'s
  - [Change from base] Added a cgparams option for `imaging_mode`
  - No threading
  - No libunwind
  - LLVM 3.9.1

* libjulia and libuv compiled as above

* Emscripten v1.37.6 with LLVM 3.9.0

* ExportWebAssembly.jl with branch ccall-away that supports codegen changes above

