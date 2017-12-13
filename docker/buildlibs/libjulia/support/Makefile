CC := emcc
CFLAGS := -I. -I../../usr/include -I../../usr/include/julia \
    -DJL_BUILD_ARCH='"Emscripten"' -DJL_BUILD_UNAME='"Emscripten"'

SRCS := hashing timefuncs ptrhash operators utf8 ios htable bitvector \
	int2str libsupportinit arraylist strtod 

OBJS := $(SRCS:%=%.o)

# headers are used for dependency tracking, while public headers will be part of the dist
HEADERS := $(wildcard *.h) uv.h

default: release

release : libsupport.bc

# source file rules
%.o: %.c $(HEADERS)

libsupport.bc: $(OBJS) 
	emcc $(OBJS) -o $@

.PHONY: default 
