main:   li r7, 0xff
    li r1, 5
    li r2, 3
    mul r3, r2, r1

    li r4, 2
    li r5, 5000
    swri r4, r5, r2 # M[5003] = r4

    jsr func

end:    jmp end

func:   push r3
    push r1
    subi r3, r3, 3
    move r1, r3 # r1 = 12, counter


loop:   swi r1, r2, 2000
    dec r1
    bgt r1, r4, loop

    pop r1
    pop r3
    rts


