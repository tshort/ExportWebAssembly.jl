
const Wrapper = ffi.Wrapper
const Pointer = ffi.Pointer
const assemblyscript = ffi.assemblyscript


const library = new Wrapper({
  arrsum: ['number', ['array']],
  //setn:   [assemblyscript.array('i32'), [assemblyscript.array('i32'), 'number', 'number']],
}, {
  dialect: 'assemblyscript',
});

library.imports((wrap) => ({
  env: {
    sayHello: function() {
      console.log("Hello from WebAssembly!");
    },
    abort: function(msg, file, line, column) {
      console.error("abort called at main.ts:" + line + ":" + column);
    }
  },
}));

library.fetch('./main.wasm').then(() => {
    console.log(this);
    console.log(library);
  for (var a = [], i =0; i < 20; ++i) a[i] = i;

  arr = new Float32Array(a);

  res = library.arrsum(arr);
  console.log(res)

});
