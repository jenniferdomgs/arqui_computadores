# Faça um programa para ler um número inteiro. Se o número for positivo, imprima o dobro do número, se for negativo, imprima o quadrado do número.

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	
	srl $6, $5, 31 # bit de sinal
	
	beq $6, $0, positivo
negativo:
	mul $4, $5, $5 # quadrado
	j imp
positivo:
	sll $4, $5, 1 # dobro
imp:
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall