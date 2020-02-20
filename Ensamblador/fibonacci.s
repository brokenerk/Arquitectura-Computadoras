li	r0, #40
li	r1, #0
li	r2, #1
li	r4, #1

eti1:
	add		r3, r2, r1
	addi	r1, r2, #0
	subi	r2, r3, #0
	addi	r4, r4, #1
	swi 	r3, 0x200
	bnei	r4, r0, eti1
	
fin:
	nop
	b 		fin