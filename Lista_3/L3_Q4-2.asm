# Faça um programa que leia do usuário
# um intervalo fechado e imprima os números
# pares desse intervalo (inclusive os limites).
# levando em conta os valores estarem desordenados 

.text
main:
      addi $2, $0, 5
      syscall
      add $8, $0, $2 # $8 = primeiro valor 

      addi $2, $0, 5
      syscall
      add $10, $0, $2 # $10 = segundo valor

      # ordena: $8 = menor e $10 = maior
      slt $9, $8, $10 # se $8 < $10, $9 = 1 (ordem certa)
      bne $9, $0, ok # se $8 < $10, não precisa trocar

      # troca $8 e $10
      add $11, $0, $8 # $11 = cópia de $8
      add $8,  $0, $10 # $8 = $10
      add $10, $0, $11  # $10 = $11 (valor original de $8)

ok:
      addi $18, $10, 1 # $18 = fim + 1 

teste:
      beq $8, $18, fim

      # verificação par
      andi $9, $8, 1 # $9 = 0 se par, 1 se ímpar
      bne $9, $0, prox # se ímpar, pula

      add $4, $0, $8
      addi $2, $0, 1
      syscall

      addi $4, $0, 32
      addi $2, $0, 11
      syscall

prox:
      addi $8, $8, 1
      j teste

fim:
      addi $2, $0, 10
      syscall