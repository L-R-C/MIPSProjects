## Nov. 30, 2021
## Program will convert temperature from Celsius to Fahrenheit or Fahrenheit to Celsius 
## 
## C = 5*(F-32)/9
## F = (9*C/5)+32

.text

    # Prompt user to enter a letter indicating the if the intial temperature is Celsius or Fahrenheit
    la $a0, prompt
    li $v0, 4
    syscall
    
    # Read character that was entered
    li $v0, 12
    syscall
    
    # conditional branches 
    li $a0, 'C'
    beq $a0, $v0, C2F
    li $a0, 'c'
    beq $a0, $v0, C2F
    
    li $a0, 'F'
    beq $a0, $v0, F2C
    li $a0, 'f'
    beq $a0, $v0, F2C
    
    # when neither C/c or F/f was entered, print error
    la $a0, error
    li $v0, 4
    syscall
    
    la $a0, endl
    li $v0, 4
    syscall
    
    b exit
    
    # When the character entered was C or c
    C2F:
    
      # Displays second question
      la $a0, prompt2
      li $v0, 4
      syscall
      
      # Reads integer entered
      li $v0, 5
      syscall
      
      mul $t0, $v0, 9       # To convert, multiply by 9 
      div $t0, $t0, 5       # Divide by 5
      add $t0, $t0, 32      # Add 32
      
      # Print new message before printing conversion 
      la $a0, prompt3
      li $v0, 4
      syscall
      
      # Print result
      move $a0, $t0
      li $v0, 1
      syscall
      
      # Print F after result for Fahrenheit
      la $a0, F
      li $v0, 4
      syscall
      
      la $a0, endl
      li $v0, 4
      syscall
      
      b exit
   
   # When the character entered was F or f
   F2C:
   
      # Displays second question
      la $a0, prompt2
      li $v0, 4
      syscall
      
      # Reads integer entered
      li $v0, 5
      syscall
      
      sub $t0, $v0, 32      # To convert, subtract 32
      mul $t0, $t0, 5       # Multiply by 5
      div $t0, $t0, 9       # Divide by 9
      
      # Print new message before printing conversion 
      la $a0, prompt3
      li $v0, 4
      syscall
      
      # Print result
      move $a0, $t0
      li $v0, 1
      syscall
      
      # Print C after result for Celcius 
      la $a0, C
      li $v0, 4
      syscall
      
      la $a0, endl
      li $v0, 4
      syscall
      
      b exit
      
      li $v0, 10
      syscall
      
 .data 
 
    prompt:      .asciiz "\nIs the temperature in Celsius (C/c) or Fahrenheit (F/f)?"
    prompt2:     .asciiz "\nWhat is the temperature?"
    prompt3:     .asciiz "The temperature is:"
    error:       .asciiz "\nWrong Letter!"
    C:           .asciiz "C"
    F:           .asciiz "F"
    endl:        .asciiz "\n"
      
      
      
      
      
      
   
      
