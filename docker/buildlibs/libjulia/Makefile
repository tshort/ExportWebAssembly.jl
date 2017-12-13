CC := emcc
CXX := em++
CFLAGS := -I. -I./support -I./flisp -I../usr/include -I../usr/include/julia \
	-DJL_BUILD_ARCH='"Emscripten"' -DJL_BUILD_UNAME='"Emscripten"' -DJL_DISABLE_LIBUNWIND -DSYSTEM_LIBUNWIND
CXXFLAGS := -I. -I./support -I./flisp -I../usr/include -I../usr/include/julia -DSYSTEM_LIBUNWIND \
	-DJL_BUILD_ARCH='"Emscripten"' -DJL_BUILD_UNAME='"Emscripten"' -DJL_DISABLE_LIBUNWIND \
	-O2 -pipe -fstack-protector-strong -fPIC -fvisibility-inlines-hidden -Wall -W -Wno-unused-parameter -Wwrite-strings -Wcast-qual -Wno-missing-field-initializers -pedantic -Wno-long-long -Wno-maybe-uninitialized -Wdelete-non-virtual-dtor -Wno-comment -Werror=date-time -std=c++11 -ffunction-sections -fdata-sections -O3 -DNDEBUG  -fno-exceptions -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS
SRCS := \
	jltypes gf typemap builtins module interpreter symbol \
	dlload sys init task array toplevel datatype \
	simplevector runtime_ccall runtime_intrinsics precompile \
	threadgroup threading stackwalk gc gc-debug gc-pages method \
	jlapi signal-handling safepoint timing subtype rtutils jl_uv
# These didn't compile:
#  ast dump APInt-C runtime_ccall jloptions 

OBJS := $(SRCS:%=%.o)

# headers are used for dependency tracking, while public headers will be part of the dist
HEADERS := julia_version.h $(wildcard support/*.h) julia.h julia_threads.h julia_internal.h options.h timing.h

default: release

release : libjulia.bc

# source file rules
%.o: %.c $(HEADERS)

libjulia.bc: $(OBJS) support/libsupport.bc
	emcc $(OBJS) support/libsupport.bc -o $@

.PHONY: default 
