  area sum,code,readonly
entry
  mov r0,#10;
  mov r1,r0
  mov r3,#0
loop subs r1,r1,#1
  cmp r1,#0
  beq exit
  add r3,r1,r0
  mov r0,r3
  b loop
exit b exit
 end
