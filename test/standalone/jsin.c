#include <stdio.h> 
#include <julia.h> 

extern double jsin(double);
extern void jl_init_with_image(const char *, const char *);
extern void jl_init_globals(void);

int main()
{
   jl_init_with_image(".", "blank.ji");
   jl_init_globals();
   printf("%f", jsin(0.5));
   jl_atexit_hook(0);
   return 0;
}
