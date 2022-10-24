# exercicio 13


	.data		#Data declaration section 
A:	.word 14
B:	.word 5
D:	.word 0

	.text 
main:			#Start of code section 
	lw $t0, A
	lw $t1, B
	add $t2, $t0, $t1	#Adding the value of A plus the value of B (A + B = C) 
	add $s1, $t2, $t2	#Adding the value of A + B with C
	sw $s1, D
	
# END OF PROGRAM
