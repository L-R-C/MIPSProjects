## Nov. 30, 2021
## Program will prompt the user for the values A,B,C and X and substitute it into quadratic equation to calculate an answer
##
## Also has a loop counter to perform program with multiple values, multiple times
##
## A*X^2 + B*X + C
##

.text 

      # Loop counter, 5
      li $s0, 5
      
 Loop:
 
      beqz $s0, Exit 
      
      # Prints prompt
      la $a0, prompt
      li $v0, 4
      syscall
      
      # Reads the integer entered
      li $v0, 5
      syscall
      
      move $t0, $v0
      
      # Prints prompt2
      la $a0, prompt2
      li $v0, 4
      syscall
      
      # Reads the integer entered
      li $v0, 5
      syscall
      
      move $t1, $v0
      
      # Prints prompt3
      la $a0, prompt3
      li $v0, 4
      syscall
      
      # Reads the integer entered
      li $v0, 5
      syscall
      
      move $t2, $v0
      
      # Prints prompt4
      la $a0, prompt
      li $v0, 4
      syscall
      
      # Reads the integer entered
      li $v0, 5
      syscall
      
      move $t3, $v0
      
      mul $t4, $t0, $t0       # t4 = X^2
      mul $t4, $t1, $t4       # t4 = A * X^2
      mul $t5, $t2, $t0       # t5 = B * X
      add $t4, $t4, $t5       # t4 = A * X^2 + B * X
      add $t4, $t4, $t3       # t4 = A * X^2 + B * X + C
      
      # Print answer before result 
      la $a0, answer
      li $v0, 4
      syscall
      
      # Prints result 
      move $a0, $t4
      li $v0, 1
      syscall
      
      la $a0, endl
      li $v0, 4
      syscall
      
      la $a0, endl
      li $v0, 4
      syscall
      
      # Decrement loop counter 
      addi $s0, $s0, -1 
      
      j Loop
      
  Exit: 
  
      li $v0, 10
      syscall
      
.data
 
 prompt:      .asciiz "Enter the value of X"
 prompt2:     .asciiz "Enter the value of A"
 prompt3:     .asciiz "Enter the value of B"
 prompt4:     .asciiz "Enter the value of c"
 answer:      .asciiz "Answer = "
 endl:        .asciiz "\n"

      
    
        
