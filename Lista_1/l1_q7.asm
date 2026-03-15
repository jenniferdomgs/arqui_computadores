# Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em uma linha diferente.
# Ex.: 3219 imprime:
# 9
# 1
# 2
# 3

# Ex.: 123 imprime:
# 3
# 2
# 1
# 0

.text
main:	
	addi $5, $0, 10 # add valor da base numerica em $5
	
	addi $2, $0, 5 
	syscall
	
	add $6, $0, $2 # copia valor de $2 para $6
	
	div $6, $5 
	mflo $7 # vai ser usado para pegar o próx algarismo
	mfhi $8 # algarismo 4
	
	div $7, $5 
	mflo $7  # vai ser usado para pegar o próx algarismo
	mfhi $9 # algarismo 3
	
	div $7, $5 
	mflo $7 # vai ser usado para pegar o próx algarismo
	mfhi $10 # algarismo 2
	
	div $7, $5
	mfhi $11 # algarismo 1
	
	add $4, $0, $8
	addi $2, $0, 1 # quarto
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11 # quebra de linha
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1 # terceiro
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11 # quebra de linha
	syscall
	
	add $4, $0, $10 
	addi $2, $0, 1 # segundo
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11 # quebra de linha
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1 # primeiro
	syscall
	
	