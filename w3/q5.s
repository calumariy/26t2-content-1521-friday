.data
numbers:
	.word 0:10

.text
main:

read_loop__init:
	li	$t0, 0
read_loop__cond:
	bge	$t0, 10, read_loop__end
read_loop__body:
	li	$v0, 5
	syscall

	mul	$t1, $t0, 4
	add	$t1, $t1, numbers
	sw	$v0, ($t1)

read_loop__step:

	addi	$t0, $t0, 1
	j	read_loop__cond
read_loop__end:
	jr	$ra
