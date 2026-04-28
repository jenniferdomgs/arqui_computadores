# Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3,
# considerando valores maiores que 0

.text
main:
	addi $8, $0, 3
	addi $9, $0, 10 # i
	
teste:
	beq $9, $0, fim
	
	# CORPO DO LAÇO
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 3
	
	# FIM DO CORPO
	addi $9, $9, -1
	j teste
fim:
	addi $2, $0, 10
	syscall