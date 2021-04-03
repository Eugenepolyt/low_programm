# main.s
.text
main:
.globl main
  la a0, array #  adress arr[0]
  la a1, array_length #}
  lw a1, 0(a1) #  arr.length

  addi sp, sp, -16 # allocating memory on the stack
  sw ra, 12(sp) # saving ra

  call insertion

  lw ra, 12(sp) # recovery ra
  addi sp, sp, 16 #freeing memory on the stack

  li a0, 0
  ret

.rodata
array_length:
 .word 13
.data
array:
 .word 10, 6, 7, 1, 12, 3, 11, 8, 5, 9, 13, 2, 4
