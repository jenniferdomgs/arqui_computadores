# Faça um programa que receba três notas (entre 0 e 100) e calcule a média ponderada
# dessas notas com pesos 1, 2 e 3. Informe a média e se o aluno foi aprovado, escreva
# após a média o a letra A. Caso o aluno seja reprovado, informe, após a média, a letra R.
# A média para aprovação é 60.

.text
main:
	# dados
	addi $8, $0, 1 # peso 1
	addi $9, $0, 2 # peso 2
	addi $10, $0, 3 # peso 3
	addi $11, $0, 60 # média
	
	# leitura e armazenamento
	addi $2, $0, 5
	syscall
	add $5, $0, $2 # nota 1
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2 # nota 2
	
	addi $2, $0, 5
	syscall
	add $7, $0, $2 # nota 3
	
	mul $12, $5, $8 # nota 1 * peso 1  
	mul $13, $6, $9 # nota 2 * peso 2
	mul $14, $7, $10 # nota 3 * peso 3
	
	add $15, $12, $13
	add $15, $15, $14 # soma total (notas * pesos)
	
	add $8, $8, $9
	add $8, $8, $10 # soma pesos
	
	div $16, $15, $8 # média
	
	slt $17, $16, $11 # se a média for menor que 60, $17 recebe 1, se não, recebe 0
	
	beq $17, $0, aprovado
reprovado:
	addi $18, $0, 'R'
	j imp
aprovado:
	addi $18, $0, 'A'
imp:
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	add $4, $0, $18
	addi $2, $0, 11
	syscall
fim:
	addi $2, $0, 10
	syscall
	
	
	
	
	
	