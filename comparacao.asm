# desvio de fluxo -- condicionais

# beq $x, $y, alvo : se $x == $y ele vai para o alvo

# bne $x, $y, alvo : se $x != $y ele vai para o alvo

# j alvo : direciona para o alvo

# slt: $x, $y, $z : se $y < $z -> $x recebe 1, se não, $x recebe 0.

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	
	add $4, $0, $5
	addi $2, $0, 1
	syscall
	
	beq $5, $6, iguais

difer:
	addi $4, $0, '#'
	j imp
iguais:
	addi $4, $0, '='
imp:
	addi $2, $0, 11
	syscall
	
	add $4, $0, $6
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall
	
	
	
	
	