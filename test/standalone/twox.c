#include <stdio.h> 
#include <julia.h> 

extern long twox(long);

int main()
{
   printf("twox: %ld\n", twox(5));
   return 0;
}
