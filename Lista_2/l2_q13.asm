# Faça um programa que leia um número inteiro (entre 0 e 9999) e imprima esse
# número com 4 caracteres, sendo o número alinhado à direita.

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, 100
	addi $8, $0, 1000
	
	slt $9, $5, $6 # se for menor que 10
	slt $9, $5, $7
	addi $9, $5, $8
	