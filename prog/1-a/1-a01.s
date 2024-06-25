.text
main:
    #init
    li $s0, 0x03020104
    li $s1, 0

    addi $t0, $s0, 0 # laod $s0
    li $t1, 0

    # first 8 bits
    andi $t2, $t0, 0xFF
    add $t1, $t1, $t2

    # next 8 bits
    srl $t0, $t0, 8 # shift 8 bits
    andi $t2, $t0, 0xFF
    add $t1, $t1, $t2

    # next 8 bits
    srl $t0, $t0, 8 # shift 8 bits
    andi $t2, $t0, 0xFF
    add $t1, $t1, $t2

    # last 8 bits
    srl $t0, $t0, 8 # shift 8 bits
    andi $t2, $t0, 0xFF
    add $t1, $t1, $t2

    # result into $s1
    addi $s1, $t1, 0

    jr $ra

