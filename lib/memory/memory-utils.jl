sbrk(x) = Base.llvmcall(     # Not working
    ("declare i32 @xxx(i32)",
"""%ret.i = call i32 @xxx(i32 %0)
ret i32 %ret.i
"""),
    Int32, Tuple{Int32}, x)

using ExportWebAssembly
#sbrk(x) = @extern(:xxx, Int32, Tuple{Int32}, x)
f(x) = Base.llvmcall(("declare i32 @xxx(i32)", "%ret = call i32 @xxx(i32 %0)\nret i32 %ret\n"), Int32, Tuple{Int32}, x)
irgen(f, Tuple{Int32}, optimize = true)
#write_wasm("sbrk.wasm", sbrk, Tuple{Int32})
#wasm2wast("sbrk.wasm")

