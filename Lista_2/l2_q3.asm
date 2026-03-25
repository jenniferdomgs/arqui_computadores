# Escreva um programa para ler dois números inteiros e mostrar na tela o maior deles,
# bem como a diferença entre eles (a diferença é sempre um valor positivo)

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	
	addi $7, $0, 1 # var auxiliar
	 
	slt $8, $5, $6 # $8 <- 1 se $5 for menor
	
	beq $7, $8, maior
difer:
	# se $5 for o maior, guarda ele e a diferença ($5 - $6)
	add $4, $0, $5
	sub $9, $4, $6
	j imp
maior:
	# se $6 for o maior, guarda ele e a diferença ($6 - $5)
	add $4, $0, $6 
	sub $9, $4, $5
imp:
	addi $2, $0, 1 # mostra o maior
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1 # mostra a diferença
	syscall
fim:
	addi $2, $0, 10
	syscall
	
	
	
	
	