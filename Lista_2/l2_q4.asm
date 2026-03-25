# Faça um programa que leia dois números e escreva a relação de grandeza entre eles.
# Ex. 345 e 23 gera a saída 345>23. Ex.: 24 e 38 gera a saída 24<38. Ex.: 12 e 12 gera a
# saída 12=12

.text
main: 
	addi $2, $0, 5
      	syscall
      	add $5, $0, $2
      
      	addi $2, $0, 5
      	syscall
      	add $6, $0, $2
      	
      	beq $5, $6, iguais
difer:
	slt $7, $5, $6	# $7 <= 1 se $5 for menor, $7 <= 0 se for maior
	bne $7, $0, seisMenor
	addi $8, $0, '>'
	j imp
seisMenor:
	addi $8, $0, '<'
	j imp
iguais:
	addi $8, $0, '='	
imp:
	add $4, $0, $5
	addi $2, $0, 1
	syscall
	
	add $4, $0, $8
	addi $2, $0, 11
	syscall
	
	add $4, $0, $6
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall