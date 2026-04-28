# Faça uma função chamada DesenhaLinha. Ele deve desenhar uma linha na tela usando
# vários símbolos de igual (Ex: ========). A função recebe por parâmetro quantos
# sinais de igual serão mostrados.

.text
main:
	addi $2, $0, 5
	syscall 
	add $4, $0, $2 # cont sinais
	
	
	jal DesenhaLinha
acaba:
	addi $2, $0, 10
	syscall
	
# Rotina p/ imprimir caracteres
# Entrada: $4
# Saída: $2
DesenhaLinha:	
	add $8, $0, $0 # i
	add $9, $0, $4
teste:
	beq $8, $9, fim 
	
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 1 # i ++
	j teste
fim:	
	jr $31
