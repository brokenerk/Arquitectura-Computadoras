li	r0, #1
li	r1, #11

suma:
	add		r0, r1, r0
	swi		r1, 0x72
	b		suma