	.data
cont:		.word 0 
term:		.word -1
somatorio:	.word 0
menor:		.word 1000000
maior:		.word 0
NEWLINE:	.asciiz 	"\n"
Q: 		.asciiz 	"Insira um valor inteiro: "
A:		.asciiz	"Introduziu um total de: "
B:		.asciiz	"O somatorio dos valores introduzidos e: "
C:		.asciiz 	"O menor valor introduzido foi: "
D:		.asciiz	"O maior valor introduzido foi: "

	.text 
main:
	lw $s0, cont
	lw $s1, term
	lw $s2, somatorio
	lw $s3, menor
	lw $s4, maior 
	
pedido:
			#Escrita no ecra do novo pedido de um numero inteiro 
	li $v0, 4 			
	la $a0, Q 			
	syscall 		
			#Leitura desse mesmo numero inteiro 
	li $v0, 5 			
	syscall 			
	move $s5, $v0 	#Passar o valor lido para o registo $s5 
	
			#Verificar se o numero introduzido é igual a 0 caso seja o programa termina 
	beq $s5, $s1, FIM
			#Caso o numero introduzido seja diferente de "-1" então vamos proceder a somar o numero introduzido aos introduzidos anteriormente 
	add $s2, $s2, $s3
			#Caso o numero introduzido seja diferente de "-1" vamos incrementar o contador e pedir um novo numero ao utilizador 
	addi $s0, $s0, 1
			#Caso o numero introduzido seja maior do que o maior registado esse numero passar a ser o maior numero 
	beq $s5, $s4, BIG
			#Caso o numero introduzido seja menor do que o menor numero registado esse numero passa a ser o menor numero 
	ponto1:
		blt $s5, $s3, SMALL
	ponto2:
		j pedido	#Salto para o inicio do pedido de novo numero 
	
	
BIG:
	move $s4, $s5
	j ponto1
	
SMALL:
	move $s3, $s5
	j ponto2

FIM:			#Escrita do numero de valores introduzidos e fim do programa 
			#Guardar o valor do contador na sua variavel 
	sw $s0, cont	
			#Guardar o valor do somatorio na sua variavel 
	sw $s2, somatorio 
			#GUardar o valor do menor numero na sua variavel, o mesmo para o maior 
	sw $s3, menor
	sw $s4, maior 
			#Escrita da frase guardada em B
	li $v0, 4
	la $a0, B
	syscall 
			#Escrita do valor guardado no somatorio 
	li $v0, 1
	move $a0, $s2
	syscall
			#Escrita de uma nova linha 
	li $v0, 4
	la $a0, NEWLINE
	syscall
			#Escrita na frase guardada em C
	li $v0, 4
	la $a0, C
	syscall
			#Escrita do valor guardado na variavel menor 
	li $v0, 1
	move $a0, $s3
	syscall
			#Escrita de uma nova linha 
	li $v0, 4
	la $a0, NEWLINE
	syscall
			#Escrita da frase guardada em D
	li $v0, 4
	la $a0, D
	syscall
			#Escrita do valor guaradado na variavel maior 
	li $v0, 1
	move $a0, $s4
	syscall
			#Escrita de uma nova linha 
	li $v0, 4
	la $a0, NEWLINE
	syscall
			#Escrita da frase guardada em A 
	li $v0, 4
	la $a0, A 
	syscall
			#Escrita do valor guardado no contador
	li $v0, 1
	move $a0, $s0
	syscall
