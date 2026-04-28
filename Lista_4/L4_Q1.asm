# Crie uma função que recebe como parâmetro um número inteiro e devolve o seu dobro.

.text
main:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	
	jal dobro 
	add $4, $0, $2
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall

# Rotina p/ calcular o dobro de um num
# Entrada: $4
# Saída: $2
dobro:
	add $2, $4, $0 # num
	sll $2, $2, 1 # multiplica por 2
	jr $31