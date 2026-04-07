# Faça um programa que receba um inteiro (entre 0 e 999) e imprima o binário correspondente.

.text
main:
    addi $2, $0, 5     
    syscall
    
    add $5, $0, $2
    
    # deslocando p/ esquerda para pegar cada bit -> depois faz and com 1 == 1 se for impar e 0 se for par -> imprime bit por bit
    
    # bit 9
    srl $4, $5, 9         
    andi $4, $4, 1
           
    addi $2, $0, 1      
    syscall
    
    # bit 8
    srl $4, $5, 8
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 7
    srl $4, $5, 7
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 6
    srl $4, $5, 6
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 5
    srl $4, $5, 5
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 4
    srl $4, $5, 4
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 3
    srl $4, $5, 3
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 2
    srl $4, $5, 2
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 1
    srl $4, $5, 1
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    # bit 0
    srl $4, $5, 0
    andi $4, $4, 1
    
    addi $2, $0, 1
    syscall
    
    addi $2, $0, 10
    syscall
