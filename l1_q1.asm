# Faça um programa para ler um número inteiro e imprimir o dobro desse número.


.text
main:	addi $2, $0, 5 # lê um int e grava em $2
	syscall
	
	mul $4, $2, 2 # multiplica valor que está em $2 por 2 e grava em $4
	
	addi $2, $0, 1 # imprime valor que está em $4 
	syscall
