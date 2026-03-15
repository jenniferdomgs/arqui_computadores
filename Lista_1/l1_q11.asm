# Faça um programa que leia 1 inteiro entre 100 e 999 e o imprima escrito de trás para frente. Exemplo: 384 gera uma saída 483

.text
main:
	# lê valor e copia para $6
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	
	addi $5, $0, 10 # add valor da base
	
	div $6, $5
	mflo $7 # vai ser usado para pegar o próx algarismo
	mfhi $8 # algarismo 3
	
	div $7, $5
	mflo $7 # vai ser usado para pegar o próx algarismo
	mfhi $9 # algarismo 2
	
	div $7, $5
	mfhi $10 # algarismo 1
	
	add $4, $0, $8
	addi $2, $0, 1 # 3
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1 # 2
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1 # 1
	syscall