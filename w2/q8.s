#include <stdio.h>

int main(void) {
    for (int i = 1; i <= 10; i++) {
        for (int j = 0; j < i; j++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}

# t0 = i
# t1 = j

main:

outer_init:
	li	$t0, 1
outer_cond:
	bgt	$t0, 10, outer_end
outer_body:

inner_init:
	li	$t1, 0
inner_cond:
	bge	$t1, $t0, inner_end
inner_body:
	li	$a0, '*'
	li	$v0, 11
	syscall

inner_incr:
	addi	$t1, $t1, 1
	j	inner_cond
inner_end:

	li	$a0, '\n'
	li	$v0, 11
	syscall

outer_incr:
	addi	$t0, $t0, 1
	b	outer_cond
outer_end:

