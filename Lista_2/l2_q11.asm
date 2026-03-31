# Um pico em uma onda mecânica é caracterizado por três valores de magnitude , a, b e
# c, tais que (a<b e b>c) forma um pico positivo ou (a>b e b<c) forma um pico negativo.
# Faça um programa que leia 3 números e indique se formam um pico, imprimindo a
# letra P, caso formem. Além disso o código deve informar se o pico é positivo negativo,
# acrescentando um sinal de + ou de – após a letra P. Se os três pontos não formarem
# um pico, deve ser impressa a letra N.

.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2 # a
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2 # b
	
	addi $2, $0, 5
	syscall
	add $7, $0, $2 # c
	
	# teste pico positivo: (a<b e b>c)
	slt $8, $5, $6 # se a for menor que b, $8 = 1
	slt $9, $7, $6 # se c for menor que b, $9 = 1
	and $10, $8, $9 # se b for maior que a e c, $10 = 1
	bne $10, $0, picoPositivo
	
	# teste´pico negativo: (a>b e b<c)
	slt $8, $6, $5 # se b for menor que a, $10 = 1
	slt $9, $6, $7 # se b for menor que c, $11 = 1
	and $10, $8, $9 # se b for menor que a e c, $10 = 1
	bne $10, $0, picoNegativo
naoFormaP:
	addi $4, $0, 'N'
	j imp	
picoPositivo:
	addi $4, $0, 'P'
	addi $12, $0, '+'
	j imp
picoNegativo:
	addi $4, $0, 'P'
	addi $12, $0, '-'
	j imp
imp:
	addi $2, $0, 11
	syscall
	
	add $4, $0, $12
	
	addi $2, $0, 11
	syscall
fim:
	addi $2, $0, 10
	syscall