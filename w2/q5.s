##include <stdio.h>
#
##define SQUARE_MAX 46340
#
#int main(void) {
#    int x, y;
#
#    printf("Enter a number: ");
#    scanf("%d", &x);
#
#    if (x > SQUARE_MAX) {
#        printf("square too big for 32 bits\n");
#    } else {
#        y = x * x;
#        printf("%d\n", y);
#    }
#
#    return 0;
.data
string:
	.asciiz	"enter a number: "

error_string:
	.asciiz	"square too big for 32 bits\n"

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

	bgt	$t0, 46340, error

square:
	mul	$t1, $t0, $t0   # y = x*x

	move	$a0, $t1
	li	$v0, 1
	syscall
	li	$v0, 11
	li	$a0, '\n'
	syscall			#printf("%d\n", y);

	b	epilogue

error:
	li	$v0, 4
	la	$a0, error_string
	syscall


epilogue:

	li	$v0, 0
	jr	$ra
