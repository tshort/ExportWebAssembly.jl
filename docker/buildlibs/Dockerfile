# This dockerfile can be used to build libjulia.bc
# and libuv.bc if the included ones don't work for you

FROM multiarch/debian-debootstrap:i386-stretch

# Set things like MARCH and JULIA_CPU_TYPES
ARG L32="linux32"

# These are the build dependencies for Julia
ARG BUILD_DEPS="build-essential gfortran m4 python python-dev cmake curl git patchelf nodejs"
RUN ${L32} apt update && \
    ${L32} apt install -y ${BUILD_DEPS}

# # Julia
RUN ${L32} git clone https://github.com/JuliaLang/julia.git /julia
WORKDIR /julia
ADD Make.user /julia
# ADD llvm.mk /julia/deps
RUN ${L32} make -j4 -C deps getall \
 && ${L32} make -j4 -C deps compile-llvm \
 && ${L32} make -j4 -C deps compile \
 && ${L32} make -j4  JULIA_CPU_TARGET=pentium4 MARCH=pentium4

 # Get the most recent emsdk
 WORKDIR /
 RUN curl -sSL https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz -o emsdk-portable.tar.gz
 RUN tar -xzf  emsdk-portable.tar.gz

 # Set up emscripten -- needed for libjulia
 WORKDIR /emsdk-portable
 RUN ./emsdk update
 RUN ./emsdk install sdk-tag-1.37.6-32bit \
  && ./emsdk activate sdk-tag-1.37.6-32bit \
  && /bin/bash /emsdk-portable/emsdk_env.sh \
  && find /emsdk-portable -name "llvm-nm" -exec ln -s {} /usr/bin/llvm-nm  ";" \
  && find /emsdk-portable/emscripten/ -maxdepth 2 -executable -type f -name 'em*' -exec ln -s {} /usr/bin/ \;
 RUN emcc --version \
  && mkdir -p /tmp/emscripten_test && cd /tmp/emscripten_test \
  && printf '#include <iostream>\nint main(){std::cout<<"HELLO"<<std::endl;return 0;}' > test.cpp \
  && em++ -O2 test.cpp -o test.js \
  && em++ test.cpp -o test.js \
  && em++ -O2 test.cpp -o test.js -s BINARYEN=1 \
  && em++ test.cpp -o test.js -s BINARYEN=1 \
  && cd / \
  && rm -rf /tmp/*

# # libjulia
WORKDIR /julia
RUN ${L32} git checkout -b codegen-wasm-libjulia \
 && ${L32} git checkout master \
 && ${L32} git worktree add /libjulia codegen-wasm-libjulia
WORKDIR /libjulia
RUN mkdir usr; cp -r /julia/usr/include usr
COPY libjulia /libjulia/src
WORKDIR /libjulia/src/support
RUN ${L32} make -j4
WORKDIR /libjulia/src/flisp
RUN ${L32} make -j4
WORKDIR /libjulia/src
RUN ${L32} make -j4 \
 && mkdir /libs \
 && cp libjulia.bc /libs

# libuv
RUN ${L32} git clone https://github.com/JuliaLang/libuv.git /libuv
WORKDIR /libuv
RUN ${L32} git checkout julia-uv1.9.0
ADD libuv/Makefile /libuv/src
COPY libuv/Makefile.unix /libuv/src/unix/Makefile
WORKDIR /libuv/src/unix
ADD libuv/uv.h /libuv/include
ADD libuv/uv-unix.h /libuv/include
RUN ${L32} make -j4
WORKDIR /libuv/src
RUN ${L32} make -j4 \
 && cp libuv.bc /libs

WORKDIR /work
