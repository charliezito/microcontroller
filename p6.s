	 area num1,code,readonly
entry
	ldr r0,=num
	ldr r5,=zeros
	ldr r6,=ones
	ldrh r1,[r0]
	mov r4,#16
	mov r2,#0
	mov r3,r2
back rors r1,r1,#1
	bcc nxt
	add r2,r2,#1
	b nxtl
nxt add r3, r3,#1
nxtl subs r4,r4,#1
	bne back
	str r3,[r5]
	str r2,[r6]

exit b exit
num dcd 0x03
		area num2,data,readwrite
ones dcd 0
zeros dcd 0
 end