# This program uses the instructions defined in the
# basic_microcode file. It adds the numbers from 100
# down to 1 and stores the result in memory location 256.
# (c) GPL3 Warren Toomey, 2012
#
main: li r0, 5
    li r1, 10
    sw r0, 15
    lwri r2, r0, r1