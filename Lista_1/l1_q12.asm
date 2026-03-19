# Faça um programa que calcule uma média ponderada de três números inteiros, com pesos 3, 9 e 15, sem usar a operação de multiplicação
.text
main:
	addi $5, $0, 27 # soma dos pesos
	
	add $2, $0, 5 
	syscall
	add $6, $0, $2 # nota 1
	
	add $2, $0, 5 
	syscall
	add $7, $0, $2 # nota 2
	
	add $2, $0, 5 
	syscall
	add $8, $0, $2 # nota 3
	
	# 2 ** 1 + 1
	sll $9, $6, 1 # multiplica por 2
	add $9, $9, $6 # multiplica por 3
	
	# 2 ** 3 + 1
	sll $10, $7, 3 # multiplica por 8
	add $10, $10, $7 # multiplica por 9
	
	# 2 ** 4 - 1
	sll $11, $8, 4 # multiplica por 16
	sub $11, $11, $8 # multiplica por 15
	
	add $12, $9, $10
	add $12, $12, $11 # soma notas * pesos
	
	div $12, $5 # soma (notas * peso) / soma pesos
	mflo $4
	
	addi $2, $0, 1 
	syscall
	
	addi $2, $0, 10
	syscall
	
	