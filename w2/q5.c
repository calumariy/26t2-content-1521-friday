#include <stdio.h>

#define SQUARE_MAX 46340

int main(void) {
    int x, y;

    printf("Enter a number: ");
    scanf("%d", &x);

    if (x > SQUARE_MAX) {
	goto error;
    }

square:
        y = x * x;
        printf("%d\n", y);
	goto epilogue;

error:
        printf("square too big for 32 bits\n");

epilogue:

    return 0;
}
