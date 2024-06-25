.text
main:
    # ロードと初期化
    li $s0, 0x03020104
    li $s1, 0

    addi $t0, $s0, 0  # $s0の値をロード
    li $t1, 0        # 和を初期化するためのレジスタ

    # 最初の8ビットの計算
    andi $t2, $t0, 0xFF      # 下位8ビットを取得
    add $t1, $t1, $t2       # 和に加える

    # 次の8ビットの計算
    srl $t0, $t0, 8          # $s0_valを右に8ビットシフト
    andi $t2, $t0, 0xFF      # 下位8ビットを取得
    add $t1, $t1, $t2       # 和に加える

    # 更に次の8ビットの計算
    srl $t0, $t0, 8          # $s0_valを右に8ビットシフト
    andi $t2, $t0, 0xFF      # 下位8ビットを取得
    add $t1, $t1, $t2       # 和に加える

    # 最後の8ビットの計算
    srl $t0, $t0, 8          # $s0_valを右に8ビットシフト
    andi $t2, $t0, 0xFF      # 下位8ビットを取得
    add $t1, $t1, $t2       # 和に加える

    # 結果を$s1に格納
    addi $s1, $t1, 0

    jr $ra
