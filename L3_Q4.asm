# Faça um programa que leia do usuário
# um intervalo fechado e imprima os números
# pares desse intervalo (inclusive os limites).


.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # inicio
     
      addi $2, $0, 5
      syscall
      addi $18, $2, 1 # fim : i
     
teste: beq $8, $18, fim
	# CORPO DO LAÇO
       andi $9, $8, 1 # se $8 for par, $9 == 0 // ímpar: $9 == 1
       bne $9, $0, prox # se for ímpar, pula para verificar o próximo
       add $4, $0, $8 # se for par, imprime
       addi $2, $0, 1
       syscall
       
       add $4, $0, ' '
       addi $2, $0, 11
       syscall
         

#-------FIM DO CORPO DO LAÇO--------------      
prox:  addi $8, $8, 1 # i++
       j teste        
fim:    
       addi $2, $0, 10
       syscall