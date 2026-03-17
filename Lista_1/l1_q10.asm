# Faça um programa que leia um caractere minúsculo e imprima o seu equivalente maiúsculo.

.text
main:
	# dados
	addi $6, $0, 32 # subtraia 32 do código ASCII da letra minuscula e o resultado é a mesma maiuscula
	
	addi $2, $0, 12 # lê caractere
	syscall
	add $7, $0, $2 # $7 <- $2
	
	sub $8, $7, $6
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	addi $2, $0, 11
	syscall