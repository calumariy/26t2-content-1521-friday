# x > 100 && x < 1000
# x = t0

# !(x > 100 && x < 1000)
# (x <= 100) || (x >= 1000)


main:
	bgt	$t0, 100, second_cond
	b	else

second_cond:
	blt	$t0, 1000, goal
	b	else

goal:


else:

