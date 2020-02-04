li	r1, #0x04
li	r2, #0x06

ciclo:
	add		r2, r2, r1
	swi		r2, 0x72
	b		ciclo