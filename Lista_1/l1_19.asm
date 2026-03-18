# Em Edulândia o calendário é muito parecido com o nosso, exceto pelo fato de não existirem anos bissextos e o mês de fevereiro ter uma quantidade fixa de dias, isso é, 30.
# Faça um programa que leia um inteiro representando um mês do ano Edulandês e imprima a quantidade de dias que tem esse mês

.text
main:
	addi $2, $0, 5 
	syscall
	add $5, $0, $2 # mês
	
	addi $6, $0, 8 
	
	div $5, $6
	mflo $8
	
	add $9, $5, $8
	
	andi $10, $9, 1
	
	addi $4, $10, 30
	
	addi $2, $0, 1
      	syscall
       
       	addi $2, $0, 10
       	syscall
	
	