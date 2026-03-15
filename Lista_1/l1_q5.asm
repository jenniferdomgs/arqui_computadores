# Faça um programa que leia um número inteiro entre 0 e 999 e imprima a soma dos algarismos desse número.
# Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16

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
	
	# soma dos valores (restos de divisão por 10)
	add $11, $8, $9 
	add $4, $10, $11 # grava a soma dos 3 algarismos em $4 
	
	addi $2, $0, 1
	syscall
	