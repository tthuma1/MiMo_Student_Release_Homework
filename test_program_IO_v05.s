# This program uses the instructions defined in the
# basic_microcode file. It adds the numbers from 100
# down to 1 and stores the result in memory location 256.
# (c) GPL3 Warren Toomey, 2012
#
main:  li r0, 16    # r0 is the loop counter
    li r1, 64       # r1 is current value (start ASCII char 64 @,A,B,C,D,...)
    li r2, -1       # Used to decrement r0
    li r3, 1        # Used to increment r1 
    li r4, 1        # Bit Pattern to be shown on FB 
loop:  sw r1, 32785 # Save current value to TTY...    
    sw r1, 16384    # Save current value to FB (0th line)...    
    sw r0, 16392    # Save current value to FB (9th line)  ...    
    sw r4, 16399    # Save current value to FB (16th line)...    
    add r1, r1, r3  # r1 ... increment value
    add r0, r0, r2  # r0 ... decrement counter
    add r4, r4, r4  # r4 ... move 1 bit left (add is multiply by 2)
    jnez r0, loop   # loop if r0 != 0
    jnez r1, main   # loop if r1 != 0 -> loop forever
        
