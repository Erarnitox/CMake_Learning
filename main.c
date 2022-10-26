#include <stdio.h>
#include "hello.h"

#ifdef USE_LIBRARY
#include "library.h"
#endif

int main(){
	puts("Hello There!");
	printf("VERSION %d.%d\n", HELLO_VERSION_MAJOR, HELLO_VERSION_MINOR); 

#ifdef USE_LIBRARY
	printf("The meaining of Life it %d\n", meaningOfLife());
#endif
	return 0;
}
