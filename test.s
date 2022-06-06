.code16
.global start

start:
	mov	$0xff, %bh

paint:
	mov	$0x06, %ah
	xor	%al, %al
	xor	%cx, %cx  
	mov	$0x184f, %dx
	int	$0x10

wait:
	xor	%ah, %ah
	int	$0x16

next:
	test	%bh, %bh
	jz	start
	sub	$0x11, %bh
	jmp	paint

.fill 510 - (. - start), 1, 0
.word 0xaa55
