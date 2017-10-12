CC := emcc
CXX := em++
CFLAGS := -I. -I../include
SRCS := \
	inet threadpool uv-common version
# These didn't compile:
#  ast dump APInt-C runtime_ccall jloptions 

OBJS := $(SRCS:%=%.o)

HEADERS := $(wildcard *.h)

default: release

release : libuv.bc

# source file rules
%.o: %.c $(HEADERS)

libuv.bc: $(OBJS) unix/unix.bc
	emcc $(OBJS) unix/unix.bc -o $@

.PHONY: default 