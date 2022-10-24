	.data
cont:		.word 0 
term:		.word -1
NEWLINE:	.asciiz 	"\n"
Q: 		.asciiz 	"Insira um valor inteiro: "
A:		.asciiz	"Introduziu um total de: "

	.text 
main:
	lw $s0, cont
	lw $s1, term
	
pedido:
			#Escrita no ecra do novo pedido de um numero inteiro 
	li $v0, 4 			
	la $a0, Q 			
	syscall 		
			#Leitura desse mesmo numero inteiro 
	li $v0, 5 			
	syscall 			
	move $s2, $v0 	#Passar o valor lido para o registo $s1 
	
			#Verificar se o numero introduzido é igual a 0 caso seja o programa termina 
	beq $s2, $s1, FIM
			#Caso o numero introduzido seja diferente de "-1" vamos incrementar o contador e pedir um novo numero ao utilizador 
	addi $s0, $s0, 1
	j pedido	#Salto para o inicio do pedido de novo numero 
	
	
FIM:			#Escrita do numero de valores introduzidos e fim do programa 

	sw $s0, cont	#Guardar o valor do contador na sua variavel 
			#Escrita da frase guardada em A 
	li $v0, 4
	la $a0, A 
	syscall
			#Escrita do valor guardado no contador
	li $v0, 1
	move $a0, $s0
	syscall
