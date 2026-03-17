# Faça um programa que leia um número inteiro, representando a duração em segundos de um experimento científico e imprima o tempo decorrido nesse experimento no formato h:m:s.
# Exemplo: 3755 gera uma saída 1:2:35

.text
main:
	# dados
	addi $5, $0, 3600 # 1h == 3600s
	addi $6, $0, 60 # 1min == 60s
	
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	
	div $7, $5 
	mflo $8 # horas
	mfhi $9 # segundos restantes
	
	div $9, $6 
	mflo $10 # minutos
	mfhi $11 # segundos restantes
	
	add $4, $0, $8
	addi $2, $0, 1 # imprimindo horas
	syscall
	
	add $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10 
	addi $2, $0, 1 # imprimindo minutos
	syscall
	
	add $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1 # imprimindo segundos
	syscall
	
	
	
	
	
	
	