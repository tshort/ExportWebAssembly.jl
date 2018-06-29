#include <stddef.h> /* size_t */

const int pagesize = 65536;
int memptr = pagesize;   // leave some room for builtin data sections

__attribute__((__weak__, __visibility__("default")))
size_t sbrk(size_t delta) {
    int maxmem = __builtin_wasm_current_memory() * pagesize - 1;
    int oldmemptr = memptr;
    if (memptr + delta > maxmem) {
        int npages = __builtin_wasm_grow_memory(((memptr + delta - maxmem) / pagesize) + 1);
        if (npages == 0) {
            return -1;
        }
    }
    memptr += delta;
    return oldmemptr;
}
// http://clc-wiki.net/wiki/memcpy  -- public domain
void *memcpy(void *dest, const void *src, size_t n)
{
    char *dp = dest;
    const char *sp = src;
    while (n--)
        *dp++ = *sp++;
    return dest;
}

// http://clc-wiki.net/wiki/memset  -- public domain
void *memset(void *s, int c, size_t n)
{
    unsigned char* p=s;
    while(n--)
        *p++ = (unsigned char)c;
    return s;
}


extern void* malloc(size_t size);
extern void free(void *ptr);

// For use with wasm-ffi
__attribute__((__weak__, __visibility__("default"))) void *allocate(int size) {
  return malloc(size);
}

__attribute__((__weak__, __visibility__("default"))) void deallocate(void *ptr) {
  free(ptr);
}

void __assert_fail(const char * assertion, const char * file, unsigned int line, const char * function)
{}
