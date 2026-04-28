# Verifica se número é positivo, negativo ou zero
# Retorno: 1 se positivo, -1 se negativo, 0 se zero

.text
main:
    addi $2, $0, 5 
    syscall
    add $4, $0, $2
    
    jal checkNum  
    add $4, $0, $2
   
    addi $2, $0, 1      
    syscall
    
fim:
    addi $2, $0, 10    
    syscall

# Rotina: verificar se num é positivo, negativo ou zero
# Entrada: $4  
# Saída:   $2 | 1 (positivo) -1 (negativo) 0 (zero)
checkNum:
    beq  $4, $0, zero        
    
    srl  $5, $4, 31            
                               
    beq  $5, $0, positivo    
    
    addi $2, $0, -1             
    jr   $31

positivo:
    addi $2, $0, 1            
    jr   $31

zero:
    add  $2, $0, $0            
    jr   $31