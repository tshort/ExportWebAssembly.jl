
FROM multiarch/debian-debootstrap:i386-stretch

# Set things like MARCH and JULIA_CPU_TYPES
ARG L32="linux32"

# These are the build dependencies for Julia
ARG BUILD_DEPS="build-essential gfortran m4 python python-dev cmake curl git patchelf nodejs"
RUN ${L32} apt update && \
    ${L32} apt install -y ${BUILD_DEPS}

# Get the most recent emsdk (can squash this)
RUN curl -sSL https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz -o emsdk-portable.tar.gz
RUN tar -xzf  emsdk-portable.tar.gz

# Set up emscripten
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

 # Get a 32-bit julia binary
WORKDIR /
RUN curl -sSL https://julialangnightlies-s3.julialang.org/bin/linux/x86/julia-latest-linux32.tar.gz -o julia-latest-linux32.tar.gz \
 && tar -xzf julia-latest-linux32.tar.gz \
 && find / -name 'julia-*' -depth -type d -exec mv {} /julia \; \
 && ln -s /julia/bin/julia /usr/bin/julia



# # ExportWebAssembly.jl
WORKDIR /
ENV PATH="/julia/usr/bin:/julia/usr/tools:/emsdk-portable/emscripten/tag-1.37.6:${PATH}"
RUN EXTRA_CXXFLAGS="-march=pentium4" julia -e "Pkg.add(\"LLVM\"); using LLVM" \
 && julia -e "Pkg.add(\"MicroLogging\")" \
 && julia -e "Pkg.clone(\"https://github.com/tshort/CodeGen.jl.git\")" \
 && julia -e "Pkg.clone(\"https://github.com/tshort/ExportWebAssembly.jl.git\")" \
 && julia -e "Pkg.checkout(\"ExportWebAssembly\", \"codegen-jl\")" \
 && julia -e "using ExportWebAssembly"

WORKDIR /work
