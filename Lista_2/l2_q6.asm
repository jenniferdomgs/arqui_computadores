# Faça um programa que leia a idade (em anos) e o tempo de serviço de um trabalhador.
# Informe se ele pode se aposentar (imprima S se sim, e N se não). As condições para
# aposentadoria são: 1) ter, ao menos, 65 anos; OU 2) ter trabalhado 40 anos; OU ter
# pelo menos 60 anos e mais de 35 anos.

.text
main:
    # leitura dos dados
    addi $2, $0, 5
    syscall
    add $5, $0, $2  # idade em anos
    
    addi $2, $0, 5
    syscall
    add $6, $0, 2     # tempo de serviço
    
    # dados auxiliares
    addi $7, $0, 65     # idade minima 1
    addi $10, $0, 40    # tempo de trabalho : condicao 2
    addi $9, $0, 60     # idade minima : condicao 3
    addi $8, $0, 35     # tempo de trabalho : condicao 3
    
    # condição 1: idade >= 65
    slt $11, $5, $7           # se idade é menor que 65, $11 recebe 1
    beq $11, $0, aposenta     # se idade é maior/igual a 65 -> pula p/ imprimir 'S'

    # condição 2: tempo de serviço >= 40
    slt $11, $6, $10          # se tempo de trabalho é menor que 40, $11 recebe 1
    beq $11, $0, aposenta     # se tempo de trabalho é maior/igual a 40 -> pula p/ imprimir 'S'

    # condição 3: idade >= 60 e tempo > 35
    
    # verifica se tem ao menos 60 anos
    slt $11, $5, $9           # se idade é menor que 60, $11 recebe 1
    bne $11, $0, naoAposenta  # se é menor que 60 -> pula p/ imprimir 'N'
    
    # verifica se tem 35+ anos de serviço
    slt $11, $8, $6           # se tem mais de 35, $11 recebe 1
    bne $11, $0, aposenta     # se é maior que 35, pula p/ imprimir 'S'
    
naoAposenta:
    addi $4, $0, 'N'         
    j imp             
    
aposenta:
    addi $4, $0, 'S'    
      
imp:
    addi $2, $0, 11          
    syscall
    
fim:
    addi $2, $0, 10         
    syscall