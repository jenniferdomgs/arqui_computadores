# Faça um programa que leia as duas notas (entre 0 e 100) e as faltas de um aluno em
# uma disciplina. A média do aluno é calculada ponderadamente, com pesos 2 e 3. A
# cada 5 faltas o aluno perde 10 pontos. O programa deve informar a média, a
# penalidade e a média final, uma em cada linha.

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2 # nota 1
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2 # nota 2
	
	addi $2, $0, 5
	syscall
	add $7, $0, $2 # faltas
	
	# dados auxiliares
	addi $8, $0, 2 # peso 1
	addi $9, $0, 3 # peso 2
	addi $10, $0, 5 # faltas -> penalidade
	addi $11, $0, 10 # -pontos
	
	mul $12, $5, $8 # nota 1 * peso 1
	mul $13, $6, $9 # nota 2 * peso 2
	
	add $14, $8, $9 # soma pesos
	add $15, $12, $13 # soma (notas * pesos)
	
	div $15, $14
	mflo $19 # média
	
	# imprime média
	add $4, $0, $19
	addi $2, $0, 1 
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	div $7, $10 # faltas / 5
	mflo $16
	
	mul $17, $16, $11 # penalidade
	add $4, $0, $17
	
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	sub $18, $19, $17 # média - penalidade
	add $4, $0, $18 # média final
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	
	