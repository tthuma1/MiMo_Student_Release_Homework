# This program uses the instructions defined in the
# basic_microcode.def file. It counts down to 0 from 2
# and stores -1 in memory location 16.
# (c) GPL3 Warren Toomey, 2012
#
main:	li	r2, 131071
	sw	r2, 49152			# Save the r2	
	sub r2, r2, 1
	sw	r2, 49153			# Save the r2	
	sub r2, r2, 1
	sw	r2, 49154			# Save the r2	
	sub r2, r2, 1
	sw	r2, 49155			# Save the r2	
	sub r2, r2, 1