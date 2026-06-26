.text

main:
	push	$ra
	push	$s0

	li	$s0, 5
	jal	foo
	li	$t1, 6
	add 	$t2, $s0, $t1

	pop	$s0
	pop $ra
	jr	$ra
	# execution continues here

# function
foo:
	# pretend to do something
	push 	$ra
	push	$s0

	li	$s0, 10
	jal	bar
	pop	$s0
	pop	$ra
	jr	$ra


bar:
	jr	$ra
