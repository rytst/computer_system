.text
main:
    #init
    li $s0, 0x03020104
    li $s1, 0

    addi $t0, $s0, 0 # laod $s0
    li $t1, 0
    li $t3, 4 # counter


loop:
    andi $t2, $t0, 0xFF
    add $t1, $t1, $t2
    srl $t0, $t0, 8 # shift 8 bits
    addi $t3, $t3, -1 # decrement counter
    bne $t3, 0, loop


    # result into $s1
    addi $s1, $t1, 0

    jr $ra

