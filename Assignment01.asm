.data
disks: .asciiz "No of moves are : "
inp: .asciiz "Enter no of disks : "
zero: .asciiz "Value entered is zero (0)"
.text 
add $s1, $s1, 1
la $a0, inp
li $v0, 4
syscall
li $v0, 5
syscall
move $t0, $v0
beq $t0, 1, if
bgt $t0, 1, else