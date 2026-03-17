# Faça um programa que leia três números inteiros, representando a duração em horas, minutos e segundos de um experimento científico e informe essa duração em segundos.

.text
main:	
	# dados
	addi $8, $0, 3600 # 1h == 3600s
	addi $9, $0, 60 # 1min == 60s
	
	# lendo 3 inteiros
	addi $2, $0, 5
	syscall
	add $5, $0, $2 # horas
	
	addi $2, $0, 5
	syscall
	add $6, $0, $2 # minutos
	
	addi $2, $0, 5
	syscall
	add $7, $0, $2 # segundos
	
	# horas -> segundos
	mul $10, $5, $8
	#  minutos -> segundos
	mul $11, $6, $9
	
	# soma dos segundos
	add $12, $10, $11
	add $12, $12, $7
	add $4, $0, $12
	
	addi $2, $0, 1
	syscall
	
	
	
	