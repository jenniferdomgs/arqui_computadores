# Faça um programa que leia três números e informa a média aritmética simples desses
# três números, arredondando o resultado para o inteiro mais próximo (a partir 0,5
# arredonda para o próximo inteiro maior)

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	
	add $9, $5, $6
	add $9, $9, $7
	
	div $10, $9, 4
	
	mfhi $11
	mflo $12
	
	add $13, $0, 1
	
	bne $11, $13, imp
	add $4, $12, $13
imp:
	add $4, $0, $12
	
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall