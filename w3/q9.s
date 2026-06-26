.data
string:
	.asciiz "...."

# t0 -> s
# t1 -> length
.text
main:

loop__init:
	la	$t0, string
	li	$t1, 0
loop__cond:
	lb	$t2, ($t0)
	beq	$t2, '\0', loop_end
loop__body:
	addi	$t1, $t1, 1
	addi	$t0, $t0, 1
loop__step:
	j	loop_cond
loop__end:
	jr	$ra
