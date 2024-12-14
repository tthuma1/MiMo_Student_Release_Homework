# This program uses the instructions defined in the
# basic_microcode.def file. It counts down to 0 from 2
# and stores -1 in memory location 16.
# (c) GPL3 Warren Toomey, 2012
#
main: li r0, 0xffff # color, start with white
    li r1, 0xc000 # address, start at top left - 1

	li r4, 32
loop1: li r3, 32 # r3 holds red + 1
loop2: move r2, r3
	dec r2
	lsli r2, r2, 11

	andi r0, r0, 0x07FF # delete old red
	or r0, r0, r2 # set new red
	swi r0, r1, 0
	inc r1

	dec r3

	jnez r3, loop2

    # lower B by 1
    dec r0

	dec r4
	jnez r4, loop1

end: jmp end