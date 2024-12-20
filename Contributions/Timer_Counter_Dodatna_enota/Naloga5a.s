main:   li r7, 400
        li r1, 49152
        li r2, 1
        li r3, 1000
        li r4, 8
        swi r3, r1, 3
        swi r2, r1, 1

        li r0, 0
loop:   lwi r5, r1, 0
        and r5, r5, r4
        inc r0
        jeqz r5, loop

        jsr print
end:    jmp end

print:  push r0
        push r1
        push r2
        push r3
        push r4
        li r2, 0

loop1:  remi r3, r0, 10
        divi r0, r0, 10
        push r3
        inc r2
        jnez r0, loop1

        li r1, 32768 #Base address for TTY
        li r4, 48 #ASCII 0

loop2:  pop r3
        add r3, r3, r4
        swi r3, r1, 0
        dec r2
        jgt r2, 0, loop2

        li r2, 32 #ASCII space
        swi r2, r1, 0

        pop r4
        pop r3
        pop r2
        pop r1
        pop r0

        rts