	.data
I:	.word 20
LIMIT:	.word 1
NEWLINE:	.asciiz "\n"

	.text
main:
	lw $s1, I
	li $s2, 1
	lw $s3, LIMIT 

start:
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 4			
	la $a0, NEWLINE		
	syscall	
	
	beq $s1, $s3, END
	sub $s1, $s1, $s2
	j start
	
END:
