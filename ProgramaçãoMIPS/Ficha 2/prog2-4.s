# Exercicio 4

	.data 			#Data declaration section 
A:	.half	1
B:	.half	2
C:	.half	3
D:	.half	4
E:	.half	5
F:	.half	6
G:	.half	7
H:	.half	8
I:	.half	9
J:	.half	0

	.text 
main:				#Start of coding section
	lh $t0, A
	lh $t1, B
	add $t2, $t0, $t1 
	lh $t0, C 
	add $t1, $t0, $t2
	lh $t2, D 
	add $t0, $t1, $t2 
	lh $t1, E 
	add $t2, $t0, $t1 
	lh $t0, F
	add $t1, $t0, $t2 
	lh $t2, G 
	add $t0, $t1, $t2 
	lh $t1, H
	add $t2, $t0, $t1
	lh $t0, I 
	add $t1, $t0, $t2 
	sh $t1, J
	
# O valor do somatorio é 45 
# Foram necessarios 3 registos  
