#include <stdio.h>

void hello(int n) {
	if (n == 0) {
		return;
	}
	printf("hello\n");
	hello(n - 1);

}

int main(void) {

	hello(10);

}
