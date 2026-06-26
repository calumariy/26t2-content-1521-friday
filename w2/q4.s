##include <stdio.h>
#
#int main(void) {
#    int x, y;
#
#    printf("Enter a number: ");
#    scanf("%d", &x);
#
#    y = x * x;
#
#    printf("%d\n", y);
#
#    return 0;
#}

.data
string:
	.asciiz	"enter a number: "


.text
# t0 -> x
# t1 -> y
main:

	li	$v0, 4
	la	$a0, string
	syscall			#printf("enter a number: ")

	li	$v0, 5
	syscall			#scanf("%d", $t0)
	move	$t0, $v0

	mul	$t1, $t0, $t0

	move	$a0, $t1
	li	$v0, 1
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall

	li	$v0, 0
	jr	$ra
	

