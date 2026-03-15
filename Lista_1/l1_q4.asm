# Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral.
# Esse programa deverá apresentar a média desse aluno, após as duas provas.

.text
main:	
	addi $2, $0, 5 # lê um int e grava em $2
	syscall
	
	add $6, $0, $2 # copia o valor que está em $2 para $6
	
	addi $2, $0, 5 # lê outro valor e grava em $2
	syscall
	
	add $7, $6, $2 # soma valores lidos e grava em $7
	addi $8, $0, 2 # add valor 2 a $8
	
	div $7, $8 # divide soma dos valores lidos pela quantidade de valores (2) -> grava div int em LO e resto de div em HI
	
	mflo $4 # transferindo div int para $4
	
	addi $2, $0, 1 # imprime valor que está em $4
	syscall
	
