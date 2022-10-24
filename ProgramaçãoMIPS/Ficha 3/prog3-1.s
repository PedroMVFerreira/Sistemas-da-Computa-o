#Exercicio 1 

	.data		#Data declaration section 
V1:	.word 7
V2:	.word 2
V3:	.word 3
V4:	.word 4

	.text
main:			#Starting of the codding seciton 
	lw $t0, V1
	lw $t1, V2 
	div $t0, $t1	#Divisão de 7 por 2 
	mflo $s1	#Divisão inteira (3)
	mfhi $s2	#Resto da divisão inteira (1) 
	lw $t0, V3
	lw $t1, V4 
	mult $t0, $t1 
	mflo $s3
