#Loop Musical

.text
main:   
	addi $2, $0, 5
        syscall
        add $8, $0, $2  # cont valores
       
        addi $2, $0, 5
        syscall
        add $5, $0, $2  # valor 1 (anterior)
        add $15, $0, $2 # cópia valor 1
       
        addi $2, $0, 5
        syscall
        add $6, $0, $2  # valor 2 (atual)
        add $16, $0, $2  # cópia valor 2
       
        add $25, $0, $0 # cont picos
       
        addi $9, $0, 2 # indice: começa em 2 
laco:  
	beq $9, $8, fim # se indice == cont valores, acaba
        addi $2, $0, 5
        syscall
        add $7, $0, $2 # próximo valor
        jal pico
        add $25, $25, $3 # soma resultado ao contador
        add $5, $0, $6 # anterior = atual
        add $6, $0, $7 # atual = proximo
       
        addi $9, $9, 1 # indice++
        j laco 
fim:    
        add $7, $0, $15
        jal pico
        add $25, $25, $3
        add $5, $0, $6
        add $6, $0, $7
        add $7, $0, $16
        jal pico
        add $25, $25, $3
        add $4, $0, $25
        addi $2, $0, 1
        syscall
       
        addi $2, $0, 10
        syscall

                           
                                                     
#entradas: $5, $6, $7
#saída: $3                                                                                
pico:  
	addi $3, $0, 0
        slt $18, $5, $6 # se $5<$6 entao $18=1 senao $16=0
        slt $19, $7, $6 # se $7<$6 entao $19=1 senao $16=0
        mul $20, $18, $19

        slt $18, $6, $5 # se $6<$5 entao $18=1 senao $16=0
        slt $19, $6, $7 # se $6<$7 entao $19=1 senao $16=0
        mul $21, $18, $19
       
        or $3, $20, $21

       jr $31