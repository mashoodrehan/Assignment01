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
beqz $t0, halt
if:
la $a0, disks
li $v0, 4
syscall
la $a0, ($t0)
li $v0, 1
syscall
li $v0, 10
syscall
else:
mul $s1, $s1, 2
add $s1, $s1, 1
sub $t0, $t0, 1
bnez $t0, else
Print:
la $a0, disks
li $v0, 4
syscall
la $a0, ($s1)
li $v0, 1
syscall
li $v0, 10
syscall
halt:
la $a0, zero
li $v0, 4
syscall
li $v0, 10
syscall