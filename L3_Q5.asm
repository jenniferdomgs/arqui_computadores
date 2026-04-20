# Faça um programa que leia 10 valores e imprima a sua soma

.text
main:
	addi $8, $0, 10
	add $9, $0, $0
	add $10, $0, $0
laco:
	beq $8, $9, fim # se i == 10 termina
	
	addi $2, $0, 5
	syscall
	
	add $10, $10, $2 # soma += valor lido
	
	addi $9, $9, 1 # i++
	j laco
fim:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall