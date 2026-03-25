# ler um número, se for ímpar imprimir 'i', se par imprimir 'p'

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	
	andi $6, $5, 1 # se $6 == 0 e par, se $6 == 1 é ímpar
	
	beq $6, $0, par
impar:
	addi $4, $0, 'i'
	j imp
par:
	addi $4, $0, 'p'
imp:
	addi $2, $0, 11
	syscall
fim:
	addi $2, $0, 10
	syscall