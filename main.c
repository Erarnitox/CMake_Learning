#include <stdio.h>
#include "hello.h"
#include "library.h"

int main(){
	puts("Hello There!");
	printf("VERSION %d.%d\n", HELLO_VERSION_MAJOR, HELLO_VERSION_MINOR); 
	printf("The meaining of Life it %d\n", meaningOfLife());
	return 0;
}
