#include <stdio.h>

int main(void) {
    // This 'for' loop is effectively equivalent to a while loop.
    // i.e. it is a while loop with a counter built in.
    # START
    int x = 24; INIT
    while (x < 42) { # COND
        printf("%d\n", x); # BODY
	x += 3; # INCR
    };
    # END
}

# t0 = x
main:

loop_init:
	li	$t0, 24 # x = 24
loop_cond:
	bge	$t0, 42, loop_end

loop_body:
	li	$v0, 1
	move	$a0, $t0
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall
loop_incr:
	addi	$t0, $t0, 3
	j	loop_cond
loop_end:
	jr	$ra

