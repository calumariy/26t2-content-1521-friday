.data
numbers:
	.word	0, 1, 2, -3, 4, -5, 6, -7, 8, 9




.text
main:
add_loop__init:
	li	$t0, 0
add_loop__cond:
	bge	$t0, 10, add_loop__end
add_loop__body:

	# i * 4 + numbers
	mul	$t1, $t0, 4
	add	$t1, $t1, numbers
	lw	$t2, ($t1)		# numbers[i]
	bge	$t2, 0, add_loop__step

	# add 42
	add	$t2, $t2, 42
	sw	$t2, ($t1)

add_loop__step:

	addi	$t0, $t0, 1
	j	add_loop__cond

add_loop__end:
	jr	$ra

