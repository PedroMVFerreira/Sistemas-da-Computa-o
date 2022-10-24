#Programa que ira ler 10 numeros inteiros do utilizador e depois escrever esses mesmos 10 numeros 

	.data
vector:		.word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
nl:			.asciiz "\n"
initLEITURA:		.word 1 
initiESCRITA:		.word 1 
LIMIT:			.word 10 
Q:			.asciiz "Insira um numero inteiro:	"
R:			.asciiz "Numeros inseridos" 

	.text 
main: 
	la $t0, vector	
	lw $t1, initLEITURA
	lw $t2, LIMIT 
	lw $t3, initiESCRITA
	
LEITURA:
	#Escrita da pergunta Q na consola
	li $v0, 4 			
	la $a0, Q 			
	syscall 			
	
	#Leitura do numero inteiro 
	li $v0, 5 			
	syscall 			
	move $t0, $v0
		 	
	#Nova linha 
	la $a0,nl	
	li $v0,4	
	syscall
	
	#Incremento da posição do array 
	addi $t0, $t0, 4 
	
	#Verificação se já foram introduzidos 10 numeros 
	beq $t1, $t2, ESCRITA
	
	#Caso ainda não tenham sido lidos 10 numeros, iremos ler mais um incrementado o contador de leitura 
	addi $t1, $t1, 1 
	
	#Salto para o inicio do ciclo de leitura para que seja possivel ler mais um numero 
	j LEITURA
	
ESCRITA: 
	#Carregamento do endereço da primeira posição do array para o registo s1 
	lw $s1, ($t0)
	
	#Escrita da resposta R na consola 
	li $v0, 4
	la $a0, R
	syscall
	
	#Escrita do numero inteiro	
	move $a0, $s1	
	li $v0, 1
	syscall
	
	#Nova linha 
	la $a0,nl	
	li $v0,4	
	syscall
	
	#Incremento da posição do array 
	addi $t0, $t0, 4 
	
	#Verificação se já foram escritos 10 numeros 
	beq $t3, $t2, FIM
	
	#Caso ainda não tenham sido escritos 10 numeros, iremos escrever mais um incrementado o contador de escrita 
	addi $t3, $t3, 1 
	
	#Salto para o inicio do ciclo de leitura para que seja possivel ler mais um numero 
	j ESCRITA
	
FIM: 
	#TERMINAR PROGRAMA 	
	li $v0, 10 		
	syscall
