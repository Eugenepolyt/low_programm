.text
insertion:
.global insertion
  li a2, 1 # a2 = 1
loop1:
  bgeu a2, a1, loop_exit # if( i > arr.lenght ) goto loop_exit
  slli a5, a2, 2 # a5 = a2 << 2 = a2 * 4
  add a5, a0, a5 # a5 = a4 + a5 = a4 + a2 * 4
  lw t1, -4(a5) # t1 = array[i-1]
  lw t0, 0(a5) # item_to_insert
  mv t2, a2 #j_for_while
  bgeu t0, t1, loop_exit3 # item_to_insert > arr[j]
loop2:
  slli t3, t2, 2 # a5 = a2 << 2 = a2 * 4
  add t3, a0, t3 # a5 = a4 + a5 = a4 + a2 * 4
  lw t6, -4(t3) # arr[j]
  beqz t2, loop_exit2 # j == 0 => end while
  bgeu t0, t6, loop_exit2 # item_to_insert > arr[j]
  sw t6, 0(t3) # array[j + 1] = t6
  addi t2, t2, -1 # j -= 1
  mv t5, t3 # save arr[j+1] to insertion at the end of while
  jal zero, loop2 # back to while
loop_exit2:
  sw t0, -4(t5)
loop_exit3:
  addi a2, a2, 1 # i += 1
  jal zero, loop1 # goto loop1
loop_exit:
  ret
