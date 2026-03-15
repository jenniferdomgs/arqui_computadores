# Faça um programa que leia um número inteiro entre 0 e 999 e imprima esse número com 3 algarismos.
# Ex.: 23 gera uma saída 023. 8 gera uma saída 008.

.text
main:	
	addi $5, $0, 10 # add valor da base numerica em $5
	
	addi $2, $0, 5 
	syscall
	
	add $6, $0, $2 # copia valor de $2 para $6
	
	div $6, $5 
	mflo $7 # vai ser usado para pegar o próx algarismo
	mfhi $8 # algarismo 3
	
	div $7, $5 
	mflo $7  # vai ser usado para pegar o próx algarismo
	mfhi $9 # algarismo 2
	
	div $7, $5 
	mfhi $10 # algarismo 1
	
	add $4, $0, $10
	addi $2, $0, 1 # primeiro
	syscall
	
	add $4, $0, $9 
	addi $2, $0, 1 # segundo 
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1 # terceiro
	syscall