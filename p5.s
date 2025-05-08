	area lar,code,readonly	
entry
	ldr r0,=arr
	ldr r4,=large
	mov r1,#4
	
	ldr r2,[r0],#4
	
back ldr r3,[r0],#4
	cmp r2,r3
	ble next
	
	mov r2,r3
next subs r1,r1,#1
	cmp r1,#0
	ble back
	str r2,[r4]
exit b exit
arr dcd 0x1234,0x5678,0x1111,0x2222,0x3333
	area data1,data,readwrite
large dcd 0
	end