# Faça um programa que leia números inteiros diferentes de zero e encontre o menor
# valor digitado e o maior valor digitado. O programa informa o maior e o menor, um em
# cada linha, quando o usuário digitar um 0.

.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # num
	
	beq $10, $0, fim # se for 0, acaba
	
	add $8, $0, $10 # menor atual
	add $9, $0, $10 # maior atual
laco:
	addi $2, $0, 5
	syscall
	add $10, $0, $2
check:
	beq $10, $0, fim # se for 0, acaba
	slt $11, $10, $8 # se num for menor que o menor atual, $11 == 1
	beq $11, $0, checkMaior # se $11 == 0: num >= menor atual
	add $8, $0, $10 # menor atual = num
checkMaior:
	slt $12, $9, $10 # se num > maior, $12 == 1
	beq $12, $0, laco
	add $9, $0, $10 # maior atual = num
	j laco
fim:
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall