# imprimir maior de 2 números

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	
	addi $7, $0, 1 # var auxiliar
	 
	slt $8, $5, $6 # $8 == 1 se $5 for menor
	
	beq $7, $8, maior
difer:
	add $4, $0, $5 # se $5 for maior ou igual a $6
	j imp
maior:
	add $4, $0, $6
imp:
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall