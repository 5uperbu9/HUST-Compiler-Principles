        .text
        .align  1
        .globl  bubblesort
        .type   bubblesort, @function
bubblesort:
    mv s2, a0
    addi s6, s2, 40
    addi s7, s2, 36
    loop1:
        addi s3, s2 ,4
        loop2:
            lw s4, 0(s2)
            lw s5, 0(s3)
            bgt s4, s5, gg
            j ll
         gg:sw s5, 0(s2)
            sw s4, 0(s3)
         ll:addi s3, s3, 4
            blt s3, s6, loop2
        addi s2, s2, 4
        blt s2, s7, loop1

.L2:
        li      a0,0
        ret
        .size   bubblesort, .-bubblesort
