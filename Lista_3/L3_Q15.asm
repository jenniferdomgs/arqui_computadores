# Escreva um programa que leia um número inteiro positivo n e em seguida imprima n
# linhas do chamado Triangulo de Floyd.

.text
main:
    addi $2, $0, 5
    syscall
    add $8, $0, $2 # $8 = n (total de linhas)
    addi $9, $0, 1 # $9 = linha atual (i)
    addi $10, $0, 1 # $10 = num atual 

linha:
    # se total de linhas < linha atual, acaba
    # executa quando $9 == $8
    slt $11, $8, $9     
    bne $11, $0, fim # se $11 != 0 (total de linhas < linha atual), acaba
    addi $12, $0, 1 # reseta coluna atual a cada linha

coluna:
    # se linha atual < coluna atual, pula a linha
    slt $11, $9, $12    
    bne $11, $0, pulaL  # se $11 != 0, vai para pulaL
    
    # imprime num atual
    add $4, $0, $10
    addi $2, $0, 1
    syscall
    
    addi $4, $0, ' '
    addi $2, $0, 11
    syscall
    
    addi $10, $10, 1 # num atual++
    addi $12, $12, 1 # coluna atual++
    
    j coluna # retorna para o início da coluna

pulaL:
    addi $4, $0, '\n'
    addi $2, $0, 11
    syscall
    
    addi $9, $9, 1 # linha atual++
    j linha

fim:
    addi $2, $0, 10
    syscall