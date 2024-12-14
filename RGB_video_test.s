# This program uses the instructions defined in the
# basic_microcode.def file. It counts down to 0 from 2
# and stores -1 in memory location 16.
# (c) GPL3 Warren Toomey, 2012
#
main: li r0, 131072 # color, start with white + 1
    li r1, 49151 # address, start at top left - 1

loop: dec r0
	inc r1
	swi r0, r1, 0
	jnez r0, loop

end: jmp end