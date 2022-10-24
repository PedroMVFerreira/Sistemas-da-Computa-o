# Exercicio 2

	.data		#Data declaration section 
V1: 	.half	1
V2: 	.half	2
V3:	.half	4
V4:	.half	8
V5:	.half	0

	.text
main:			#Start of coding section 
	lh $t0, V1
	lh $t1, V2
	add $t2, $t0, $t1	# 1 + 2 
	lh $t0, V3
	add $t1, $t2, $t0	# (1 + 2) + 4 
	lh $t0, V4
	add $t2, $t1, $t0	# (1 + 2 + 4) + 8
	sh $t2, V5
	
# Todas as instruções de load foram alteradas de lw (load word) para load half (load half) 
# Assim como todas as instruções de storage foram alteradas de sw para sh (storage half)  
# São utilizados 10 bytes explicitamente pela memoria 
