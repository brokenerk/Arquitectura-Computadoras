li	r0, #40
li	r1, #0

li	r2, #0
li	r3, #1

ciclo:
	add		r4, r2, r3
	addi	r2, r3, #0
	subi	r3, r4, #0
	addi	r1, r1, #1
	bgti	r1, r0, ciclo

fin:
	nop
	b 		fin