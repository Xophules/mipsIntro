      .data
bin:.asciiz  "The binary rep of $t1:\n"          # space to insert between numbers
head: .asciiz  "The val in $t1:\n"
newline: .asciiz " \n"
      .text

addi $t1, $zero, 536955172 #Convert 0010 0000 0000 0001 0100 1001 0010 0100 to interger 

la $a0, head
li $v0, 4
syscall

add $a0, $zero, $t1
li $v0, 1
syscall

la $a0, newline
li $v0, 4
syscall

la $a0, bin
li $v0, 4
syscall

add $a0, $zero, $t1
li $v0, 35
syscall



