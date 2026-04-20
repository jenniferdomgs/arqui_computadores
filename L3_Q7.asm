# Faça um programa que leia números inteiros diferentes de zero e calcule a soma dos
# valores positivos. O laço do programa termina quando o usuário digita um valor zero.
# Em seguida o programa imprime a soma dos valores positivos digitados.

.text
main:
	add $10, $0, $0
laco:
	addi $2, $0, 5
	syscall
	
	beq $2, $0, fim
	
	add $10, $10, $2 # soma += valor lido
	j laco
fim:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall

