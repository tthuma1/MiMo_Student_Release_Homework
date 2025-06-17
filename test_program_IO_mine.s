main:  li r0, 83 # S
    li r1, 83

    li r3, 0xffff
    li r4, 0

loop: sw r0, 32785 # Save current value to TTY
    beq r0, r1, change_char
    li r0, 83 # S
    jmp fb_write
change_char:  li r0, 79 # O

fb_write: swi r3, r4, 16384 # Save current value to FB
    lsri r3, r3, 1
    addi r4, r4, 1
    jnez r3, continue

reset_fb: li r3, 0xffff
    li r4, 0

continue:  jmp loop