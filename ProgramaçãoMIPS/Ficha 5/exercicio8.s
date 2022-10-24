# Ficheiro:  vector01.s com escrita de todos os valores do array atraves de um ciclo 

	.data	
vector:	.word 	70, 602, 102, 18, 15, -4, 89, 8078, -475, 289
nl:		.asciiz "\n"
init:		.word 1 
LIMIT:		.word 10  

	.text
main:	
	la $t0, vector	
	lw $t1, init
	lw $t2, LIMIT 
	
CICLO:
	lw $s1, ($t0)	
	move $a0, $s1	
	li $v0, 1
	syscall
	la $a0,nl	
	li $v0,4	
	syscall
	addi $t0,$t0,4
	beq $t1, $t2, FIM	
	addi $t1,$t1,1
	j CICLO
FIM:
	li $v0, 10 		# terminar programa
	syscall
# FIM
