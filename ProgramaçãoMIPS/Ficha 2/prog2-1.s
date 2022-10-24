# Exercicio 1

	.data		#Data declaration section 
V1: 	.word	1
V2: 	.word	2
V3:	.word	4
V4:	.word	8
V5:	.word	0

	.text
main:			#Start of coding section 
	lw $t0, V1
	lw $t1, V2
	add $t2, $t0, $t1	# 1 + 2 
	lw $t0, V3
	add $t1, $t2, $t0	# (1 + 2) + 4 
	lw $t0, V4
	add $t2, $t1, $t0	# (1 + 2 + 4) + 8
	sw $t2, V5
	
# São usados de modo explicito 10 bytes pela memoria RAM 
