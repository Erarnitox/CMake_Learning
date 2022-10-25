#include <stdio.h>
#include "hello.h"

int main(){
	puts("Hello There!");
	printf("VERSION %d.%d\n", HELLO_VERSION_MAJOR, HELLO_VERSION_MINOR); 
	return 0;
}
