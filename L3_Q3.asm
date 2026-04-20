# Faça um programa que implementa um laço com um teste no início que conte de 0 a
# 10 imprimindo esses números, um em cada linha da saída.

.text
main:
	addi $8, $0, 1
	addi $9, $0, 11
laco:
	beq $8, $9, fim
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall


	addi $8, $8, 1
	j laco
fim:
	addi $2, $0, 10
	syscall