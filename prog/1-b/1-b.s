.text
main:
    # init
    li $t0, 0x1000A000 # addr to table
    li $s0, 1000


    li $t1, 0 # num of prime-number
    li $t2, 2 # set $t2 to 2(counter)


Loop:
    li $t3, 2

    jal Is_Prime # function

Prime:
    sw $t2, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 4


Not_Prime:
    beq $s0, $t2, Exit
    addi $t2, $t2, 1 # increment
    j Loop
    




Exit:
    addi $s1, $t1, 0 # $s1 <-- $t1
    li $v0, 10
    syscall



# is $t2 prime?
Is_Prime:
    beq $t2, $t3, Prime # 2 is prime number
Loop_1:
    div $t2, $t3
    mfhi $t4
    beq $t4, $zero, Not_Prime

    addi $t3, $t3, 1
    bne $t3, $t2, Loop_1

    j Prime


