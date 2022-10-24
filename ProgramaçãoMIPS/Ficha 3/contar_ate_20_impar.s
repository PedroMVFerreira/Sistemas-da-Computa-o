# Ficheiro: contar.s até 20 e mostrando impares 

	.data	
I:	.word 	1
LIMIT:	.word	20
PAR:	.word 	2

	.text

main:
	lw $s1, I		# i= 1
	li $s2, 1
	lw $s3, LIMIT	
	lw $s4, PAR

CYCLE: 
	beq $s1, $s3, FIM	# se i==LIMIT entao ir para FIM
	div $s1, $s4
	mfhi $s5
	beq $s5, $s2, IMPAR
	add $s1, $s1, $s2 	# i=i+1
	j CYCLE
	
IMPAR:	
	move $s7, $s1
	add $s1, $s1, $s2
	j CYCLE
FIM:

