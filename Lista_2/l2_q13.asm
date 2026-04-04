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
	
	slt $9, $5, $6  # se for menor que 10, $9 = 1
	bne $9, $0, menorQ10

	
	slt $9, $5, $7 # se for menor que 100, $9 = 1
	bne $9, $0, menorQ100
	
	slt $9, $5, $8 # se for menor que 1000, $9 = 1
	bne $9, $0, menorQ1000
	
	add $4, $0, $5 # a partir de 1000 -> imprime normalmente
	j fim
	
menorQ10: # imprime 3 zeros, guarda o número e pula para o fim (onde imprime)
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	
	add $4, $0, $5
	j fim
	
menorQ100: # imprime 2 zeros, guarda o número e pula para o fim (onde imprime)
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	
	add $4, $0, $5
	j fim
	
menorQ1000: # imprime 0, guarda o número e pula para o fim (onde imprime)
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	
	add $4, $0, $5
	
fim:
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall