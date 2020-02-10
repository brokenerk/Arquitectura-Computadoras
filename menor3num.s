li 		r1, #4
li 		r2, #8
li 		r3, #1

blti 	r3, r1, cond
blti 	r2, r3, res3
b 		res2

cond:
	blti	r2, r1, res1
	b 		res2

res1:
	swi		r1, 0x2000

res2:
	swi		r2, 0x2000

res3:
	swi		r3, 0x2000

fin:
	nop
	b 		fin