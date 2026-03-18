# Faça um programa que leia um número inteiro entre 0 e 9999 e imprima esse número com 4 caracteres, substituindo o algarismo 0 por espaço.
# Exemplo.: 304 gera uma saída 3 4

.text
main:
    addi $5, $0, 10 # $5 <= 10 (valor da base numerica)
    
    addi $2, $0, 5       
    syscall
    add $6, $0, $2 # número
    
    # extraindos os 4 algarismos
    div $6, $5 
    mflo $7             
    mfhi $11 # unidade
    
    div $7, $5 
    mflo $7             
    mfhi $10 # dezena
    
    div $7, $5 
    mflo $7             
    mfhi $9 # centena
    
    div $7, $5 
    mfhi $8 # milhar
    
    
    # primeiro algarismo - milhar
    sub $12, $0, $8 # $12 <= 0 - milhar
    srl $12, $12, 31 # bit de sinal
    sll $12, $12, 4 # multiplica por 16
    addi $4, $8, 32 # $4 <= milhar + 32
    add $4, $4, $12 # $4 <= $4 + (16 ou 0)
    addi $2, $0, 11    
    syscall
    
    # segundo algarismo - centena
    sub $12, $0, $9 # $12 <= 0 - centena
    srl $12, $12, 31 # bit de sinal
    sll $12, $12, 4 # multiplica por 16
    addi $4, $9, 32 # $4 <= centena + 32
    add $4, $4, $12 # $4 <= $4 + (16 ou 0)
    addi $2, $0, 11 
    syscall
    
    # terceiro algarismo - dezena
    sub $12, $0, $10 # $12 <= 0 - dezena
    srl $12, $12, 31 # bit de sinal
    sll $12, $12, 4 # multiplica por 16
    addi $4, $10, 32 # $4 <= dezena + 32
    add $4, $4, $12 # $4 <= $4 + (16 ou 0)
    addi $2, $0, 11     
    syscall
    
    # quarto algarismo - unidade
    sub $12, $0, $11 # $12 <= 0 - unidade
    srl $12, $12, 31 # bit de sinal
    sll $12, $12, 4 # multiplica por 16
    addi $4, $11, 32 # $4 <= unidade + 32
    add $4, $4, $12 # $4 <= $4 + (16 ou 0)
    addi $2, $0, 11      
    syscall
    
    addi $2, $0, 10 # encerra 
    syscall