# Ficheiro:  vector01.s

	.data	
vector:	.word 	70, 602, 102, 18, 15, -4, 89, 8078, -475, 289
nl:		.asciiz "\n"

	.text

main:			# In'icio da sec,ca~o 
	
	la $t0, vector	
	lw $s1, ($t0)	
	move $a0, $s1	
	li $v0, 1
	syscall
	la $a0,nl	
	li $v0,4	
	syscall
	addi $t0,$t0,4	
	lw $s1, ($t0)	
	move $a0, $s1	
	li $v0, 1
	syscall
	la $a0,nl	
	li $v0,4	
	syscall
	addi $t0,$t0,4	
	lw $s1, ($t0)	
	move $a0, $s1	
	li $v0, 1
	syscall
	la $a0,nl	
	li $v0,4	
	syscall
	addi $t0,$t0,4	
	lw $s1, ($t0)	
	move $a0, $s1	
	li $v0, 1
	syscall
	la $a0,nl	
	li $v0,4	
	syscall
	
	li $v0, 10 		# terminar programa
	syscall


# FIM
