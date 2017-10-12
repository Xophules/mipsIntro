      .data
head: .asciiz   "Type the value you want to convert to ASCII:\n"
nl: .asciiz " \n"           # size of "array" 
ze: .asciiz "20\n"
      .text

la $a0, head
li $v0, 4
syscall





#addi $a1,$zero, 8
li $v0, 8
syscall



move $t0, $zero
loop1: sll $t1,$t0,2
	add $t2,$a0,$t1
	
	add $t5,$zero,$a0
	
	#lw $t4, 4($a0)
	#add $a0, $zero, $t4
	addi $a0, $a0, 2
	
	li $v0, 11
	syscall
	
	add $a0,$zero,$t5
	
	li $v0, 4
	syscall
	
	addi $t0,$t0,1
	slt $t3,$t0,$a1
	bne $t3, $zero,loop1




