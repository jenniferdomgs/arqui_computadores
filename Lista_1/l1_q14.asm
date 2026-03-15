# Faça um programa que leia um número inteiro e imprima 1 se o valor for ímpar e 0 se o valor for par

.text
main:
	addi $2, $0, 5 
	syscall
	
	andi $4, $2, 1 # faz uma and entre o valor de $2 e 1 e grava em $4
	
	addi $2, $0, 1 # se a saída for 0 é par, se for 1 é ímpar
	syscall