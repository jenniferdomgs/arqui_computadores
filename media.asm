# ler notas. parar quando uma nota for negativa. imprimir média.

.text
main:
	addi $8, $0, 0 # soma notas
	addi $9, $0, 0 # cont notas
cont:
	addi $2, $0, 5
	syscall
	add $8, $8, $2
	addi $9, $9, 1 # cont++
	
	slt $10, $2, $0 # se a nota for negativa, $10 == 1
	beq $10, $0, cont # se for positiva, continua
	
	# se for negativa, reverte as somas
	sub $8, $8, $2 # subtrai o valor da soma
	addi $9, $9, -1 # subtrai 1 na quantidade de notas
	
	# calculo média
	div $8, $9
	mflo $4
	
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall