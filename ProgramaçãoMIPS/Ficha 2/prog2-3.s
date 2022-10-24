# Exercicio 3

	.data		#Data declaration section 
V1: 	.byte	1
V2: 	.byte	2
V3:	.byte	4
V4:	.byte	8
V5:	.byte	0

	.text
main:			#Start of coding section 
	lb $t0, V1
	lb $t1, V2
	add $t2, $t0, $t1	# 1 + 2 
	lb $t0, V3
	add $t1, $t2, $t0	# (1 + 2) + 4 
	lb $t0, V4
	add $t2, $t1, $t0	# (1 + 2 + 4) + 8
	sb $t2, V5
	
# Todas as instruções de load foram alteradas de lh (load half) para lb (load byte) 
# Assim como todas as instruções de storage foram alteradas de sh para sb (storage half)  
# São utilizados 5 bytes explicitamente pela memoria 
