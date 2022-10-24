	.data
A: 	.word 	15
B: 	.word 	15	
X: 	.word 	0

	.text
main: 
	lw $s0, A
	lw $s1, B

	beq, $s0, $s1, etiqueta0
	blt $s0, $s1, etiqueta1 	
	move $s7, $s1 			
	j etiqueta2 
	
etiqueta0:
	li $s7, -1
	j etiqueta2			
	
etiqueta1: 
	move $s7, $s0 			

etiqueta2: 
	sw $s7, X			
