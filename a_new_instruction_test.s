# This program uses the instructions defined in the
# basic_microcode file. It adds the numbers from 100
# down to 1 and stores the result in memory location 256.
# (c) GPL3 Warren Toomey, 2012
#
main: li r0, 0xffff
    move r2, r0
	# lower R by 1
	lsri r2, r2, 11
	dec r2
	lsli r2, r2, 11
	ori r2, r2, 0x7FF
	and r0, r0, r2

    # lower B by 1
    dec r0