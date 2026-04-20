# Faça um programa que leia números inteiros e calcule a soma. O laço do programa
# termina quando o usuário digita um valor negativo. Em seguida o programa imprime a
# soma dos valores digitados.

.text
main:
	addi $9, $0, 1
	add $10, $0, $0
laco:
	addi $2, $0, 5
	syscall
	
	srl $11, $2, 31
	
	beq $11, $9, fim
	
	add $10, $10, $2 # soma += valor lido
	j laco
fim:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall