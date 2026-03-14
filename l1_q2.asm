# Faça um programa para ler um número inteiro e imprimir o quadrado desse número


.text
main:	addi $2, $0, 5 # lê um int e grava em $2
	syscall
	
	mul $4, $2, $2 # multiplica o valor que está em $2 por ele mesmo e grava em $4
	
	addi $2, $0, 1 # imprime o valor que está em $4
	syscall
