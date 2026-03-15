# Faça um programa para ler dois números inteiros e imprimir a multiplicação desses dois números

.text
main:	
	addi $2, $0, 5 # lê um int e grava em $2
	syscall
	
	add $8, $0, $2 # copia o valor que está em $2 para $8
	
	addi $2, $0, 5 # lê outro int e grava em $2
	syscall
	
	mul $6, $2, $8 # multiplica os valores que estão em $2 e $8 e grava em $6
	add $4, $0, $6 # copia o valor que está em $6 para $4
	
	addi $2, $0, 1 # imprime o que está em $4
	syscall
