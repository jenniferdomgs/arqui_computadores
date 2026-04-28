# Faça um programa que solicite ao usuário um número para ser a referência e outro
# para ser a quantidade de valores a ser impresso no caso do programa da Q1. Para a
# mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.

.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # referência
	add $9, $0, $2 # acumulador -> inicia = referência
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # i
teste:
	beq $10, $0, fim # se i == 0, termina
	
	# CORPO DO LAÇO
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# avança p/ o próximo multiplo
	add $9, $9, $8
	
	# FIM DO CORPO
	addi $10, $10, -1
	j teste
fim:
	addi $2, $0, 10
	syscall
