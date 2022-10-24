# exercicio 15 

	.data		# Data declaration section 
A:	.word 120
B:	.word 250
C:	.word 50
D:	.word 15
E:	.word 0 

	.text
main:			# Start of code section
	lw $t0, A
	lw $t1, C
	add $t2, $t0, $t1		# A + C -> 20
	add $t0, $t2, $t1 		# (A + C) + C -> 26
	lw $t1, B
	lw $t2, D
	add $t3, $t1, $t2		# D + B -> 16
	sub $s1, $t0, $t3		# (A + C + C) - (D + B) -> 10
	sw $s1, E
