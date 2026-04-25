# rotina fatorial : imprimir o fatorial de um num dado

.text
main:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	
	jal fat
	add $4, $0, $2
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall



# Rotina p/ calcular o fatorial
# Entrada: $4
# Saída: $2
# usa sem preservar: $8
fat:
	add $2, $4, $0 # num
	addi $8, $4, -1 # num - 1
	
mtl:	
	mul $2, $2, $8 # fat * i
	addi $8, $8, -1 # i--
	bne $8, $0, mtl # se 8 != 0 retorna para mtl
	jr $31