   	.arch armv7-a
	.text
	.global	bubblesort
	.syntax unified
	.thumb
	.thumb_func
bubblesort:

  mov r2, #0
  loop1:
        add r3, r2 ,#4
        loop2:
            ldr r4, [r0, r2]
            ldr r5, [r0, r3]
            cmp r4, r5
            bgt g
            b l
          g:str r5, [r0, r2]
            str r4, [r0, r3]
          l:add r3, r3, #4
            cmp r3, #0x28
            bne loop2
        add r2, r2, #4
        cmp r2, #0x24
        bne loop1

  mov r0, #0
	bx	lr
