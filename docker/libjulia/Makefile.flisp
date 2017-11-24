CC := emcc
CFLAGS := -I. -I../../usr/include -I../support -I../../usr/include/julia \
    -DJL_BUILD_ARCH='"Emscripten"' -DJL_BUILD_UNAME='"Emscripten"' -D_GNU_SOURCE

SRCS := flisp builtins string equalhash table iostream julia_extensions

# flisp.o:   flisp.c cvalues.c types.c flisp.h print.c read.c equal.c
# flmain.o:  flmain.c flisp.h

OBJS := $(SRCS:%=%.o)

# headers are used for dependency tracking, while public headers will be part of the dist
HEADERS := $(wildcard *.h) uv.h

default: release

release : libflisp.bc

# source file rules
%.o: %.c $(HEADERS)

libflisp.bc: $(OBJS)
	emcc $(OBJS) -o $@

.PHONY: default 
