.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2 # a

	addi $2, $0, 5
	syscall
	add $6, $0, $2 # b
	
	sub $7, $5, $6 
	not $8, $7
	
	srl $9, $7, 31 # ss
	srl $10, $8, 31 # ss'
	
	mul $11, $5, $9
	mul $12, $6, $10
	add $13, $11, $12
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	
	
	

