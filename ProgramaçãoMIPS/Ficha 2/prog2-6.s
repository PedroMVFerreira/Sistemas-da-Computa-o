# Exercicio 6 

# 11E + 112 = 230
# 11E - 112 = 00C

	.data		#Data declaration section 
x:	.word	0x11e
y:	.word 	0x112
z: 	.word	0x0 
w:	.word	0x0

	.text 
main:			#Begging of coding section
	lw $t0, x
	lw $t1, y
	add $t2, $t0, $t1
	sub $t3, $t0, $t1  
	sw $t2, z
	sw $t3, w
