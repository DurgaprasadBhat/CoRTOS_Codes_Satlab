	.file	"main.c"
	.section	".rodata"
	.align 8
.LC0:
	.long	0
	.long	0
	.section	".text"
	.align 4
	.global absoluteValue
	.type	absoluteValue, #function
	.proc	07
absoluteValue:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f10
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L2
	 nop
.L5:
	ldd	[%fp-8], %f8
	fnegs	%f8, %f8
	std	%f8, [%fp-8]
.L2:
	ldd	[%fp-8], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	absoluteValue, .-absoluteValue
	.section	".rodata"
	.align 8
.LC1:
	.long	1072693248
	.long	0
	.align 8
.LC2:
	.long	1073741824
	.long	0
	.align 8
.LC3:
	.long	1058682594
	.long	3944497965
	.section	".text"
	.align 4
	.global square_root
	.type	square_root, #function
	.proc	07
square_root:
	save	%sp, -120, %sp
	std	%i0, [%fp-16]
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp-8]
	b	.L7
	 nop
.L8:
	ldd	[%fp-16], %f10
	ldd	[%fp-8], %f8
	fdivd	%f10, %f8, %f10
	ldd	[%fp-8], %f8
	faddd	%f10, %f8, %f10
	sethi	%hi(.LC2), %g1
	or	%g1, %lo(.LC2), %g1
	ldd	[%g1], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%fp-8]
.L7:
	ldd	[%fp-8], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%fp-16], %f8
	fdivd	%f10, %f8, %f10
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	fsubd	%f10, %f8, %f8
	std	%f8, [%fp-24]
	ldd	[%fp-24], %o0
	call	absoluteValue, 0
	 nop
	fmovs	%f0, %f10
	fmovs	%f1, %f11
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbge	.L8
	 nop
	ldd	[%fp-8], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	square_root, .-square_root
	.align 4
	.global Vec_construct
	.type	Vec_construct, #function
	.proc	020
Vec_construct:
	save	%sp, -120, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp-8]
	st	%i2, [%fp-4]
	st	%i3, [%fp-16]
	st	%i4, [%fp-12]
	st	%i5, [%fp+88]
	ld	[%fp+88], %g1
	st	%g1, [%fp-24]
	ld	[%fp+92], %g1
	st	%g1, [%fp-20]
	ld	[%fp+68], %g1
	ldd	[%fp-8], %f8
	std	%f8, [%g1]
	ld	[%fp+68], %g1
	ldd	[%fp-16], %f8
	std	%f8, [%g1+8]
	ld	[%fp+68], %g1
	ldd	[%fp-24], %f8
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	Vec_construct, .-Vec_construct
	.align 4
	.global cross
	.type	cross, #function
	.proc	020
cross:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	cross, .-cross
	.align 4
	.global dot
	.type	dot, #function
	.proc	07
dot:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	dot, .-dot
	.align 4
	.global scale_vec
	.type	scale_vec, #function
	.proc	020
scale_vec:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp-8]
	st	%i2, [%fp-4]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+68], %g1
	ldd	[%g1+8], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+68], %g1
	ldd	[%g1+16], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	scale_vec, .-scale_vec
	.align 4
	.global add_vec
	.type	add_vec, #function
	.proc	020
add_vec:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	add_vec, .-add_vec
	.section	".rodata"
	.align 8
.LC4:
	.long	0
	.long	0
	.align 8
.LC5:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.global matrix_construct
	.type	matrix_construct, #function
	.proc	020
matrix_construct:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	mov	%i1, %g1
	stb	%g1, [%fp+72]
	ldub	[%fp+72], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L17
	 nop
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L18
	 nop
.L21:
	stb	%g0, [%fp-2]
	b	.L19
	 nop
.L20:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	sethi	%hi(.LC4), %g2
	or	%g2, %lo(.LC4), %g2
	ldd	[%g2], %f8
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L19:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L20
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L18:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L21
	 nop
.L17:
	ldub	[%fp+72], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 1
	bne	.L16
	 nop
	stb	%g0, [%fp-3]
	stb	%g0, [%fp-4]
	stb	%g0, [%fp-3]
	b	.L23
	 nop
.L28:
	stb	%g0, [%fp-4]
	b	.L24
	 nop
.L27:
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	bne	.L25
	 nop
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g4
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	sethi	%hi(.LC5), %g2
	or	%g2, %lo(.LC5), %g2
	ldd	[%g2], %f8
	std	%f8, [%g1]
	b	.L26
	 nop
.L25:
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g4
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	sethi	%hi(.LC4), %g2
	or	%g2, %lo(.LC4), %g2
	ldd	[%g2], %f8
	std	%f8, [%g1]
.L26:
	ldub	[%fp-4], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-4]
.L24:
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L27
	 nop
	ldub	[%fp-3], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-3]
.L23:
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L28
	 nop
.L16:
	restore
	jmp	%o7+8
	 nop
	.size	matrix_construct, .-matrix_construct
	.align 4
	.global add_matrix
	.type	add_matrix, #function
	.proc	020
add_matrix:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L30
	 nop
.L33:
	stb	%g0, [%fp-2]
	b	.L31
	 nop
.L32:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+72], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f10
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+76], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L31:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L32
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L30:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L33
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	add_matrix, .-add_matrix
	.align 4
	.global scale_matrix
	.type	scale_matrix, #function
	.proc	020
scale_matrix:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	std	%i2, [%fp-16]
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L35
	 nop
.L38:
	stb	%g0, [%fp-2]
	b	.L36
	 nop
.L37:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+72], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f10
	ldd	[%fp-16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L36:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L37
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L35:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L38
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	scale_matrix, .-scale_matrix
	.align 4
	.global det
	.type	det, #function
	.proc	07
det:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ld	[%fp+68], %g1
	ldd	[%g1+32], %f12
	ld	[%fp+68], %g1
	ldd	[%g1+64], %f8
	fmuld	%f12, %f8, %f12
	ld	[%fp+68], %g1
	ldd	[%g1+40], %f14
	ld	[%fp+68], %g1
	ldd	[%g1+56], %f8
	fmuld	%f14, %f8, %f8
	fsubd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+68], %g1
	ldd	[%g1+24], %f14
	ld	[%fp+68], %g1
	ldd	[%g1+64], %f8
	fmuld	%f14, %f8, %f14
	ld	[%fp+68], %g1
	ldd	[%g1+40], %f16
	ld	[%fp+68], %g1
	ldd	[%g1+48], %f8
	fmuld	%f16, %f8, %f8
	fsubd	%f14, %f8, %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+68], %g1
	ldd	[%g1+24], %f14
	ld	[%fp+68], %g1
	ldd	[%g1+56], %f8
	fmuld	%f14, %f8, %f14
	ld	[%fp+68], %g1
	ldd	[%g1+32], %f16
	ld	[%fp+68], %g1
	ldd	[%g1+48], %f8
	fmuld	%f16, %f8, %f8
	fsubd	%f14, %f8, %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-8]
	ldd	[%fp-8], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	det, .-det
	.align 4
	.global trace
	.type	trace, #function
	.proc	07
trace:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ld	[%fp+68], %g1
	ldd	[%g1+32], %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+64], %f8
	faddd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	trace, .-trace
	.align 4
	.global T
	.type	T, #function
	.proc	020
T:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L44
	 nop
.L47:
	stb	%g0, [%fp-2]
	b	.L45
	 nop
.L46:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+72], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f8
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L45:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L46
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L44:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L47
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	T, .-T
	.align 4
	.global adjoint
	.type	adjoint, #function
	.proc	020
adjoint:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+24]
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+48]
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+32]
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+56]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+40]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+64]
	restore
	jmp	%o7+8
	 nop
	.size	adjoint, .-adjoint
	.align 4
	.global outer_product
	.type	outer_product, #function
	.proc	020
outer_product:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+24]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+32]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+40]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+48]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+56]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+64]
	restore
	jmp	%o7+8
	 nop
	.size	outer_product, .-outer_product
	.align 4
	.global matmul
	.type	matmul, #function
	.proc	020
matmul:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	matmul, .-matmul
	.global data
	.section	".data"
	.align 8
	.type	data, #object
	.size	data, 240
data:
	.long	1071327012
	.long	2063322410
	.long	1070668494
	.long	3848059360
	.long	-1076554974
	.long	104475595
	.long	-1076105584
	.long	1459834782
	.long	-1077614851
	.long	4081377926
	.long	1071327012
	.long	2063322410
	.long	1070668494
	.long	3848059360
	.long	-1076554974
	.long	104475595
	.long	-1076105584
	.long	1459834782
	.long	-1077614851
	.long	4081377926
	.long	1071782424
	.long	1375248033
	.long	-1075766578
	.long	3848059360
	.long	1071747057
	.long	2949473806
	.long	-1077154160
	.long	1458033342
	.long	-1076223811
	.long	1880496936
	.long	1072483532
	.long	3435973837
	.long	1070084241
	.long	3869601432
	.long	1072549342
	.long	3232579139
	.long	1071489105
	.long	2035538631
	.long	1071000469
	.long	2259239109
	.long	1072079006
	.long	1719735582
	.long	1072277558
	.long	1477121744
	.long	1072207442
	.long	1552643239
	.long	1072426640
	.long	1458934062
	.long	1072479645
	.long	779155721
	.long	1069128089
	.long	2576980378
	.long	1072577718
	.long	1615776317
	.long	1069801108
	.long	2157454679
	.long	1072214083
	.long	3843465600
	.long	1072533362
	.long	149307522
	.section	".text"
	.align 4
	.type	f.1204, #function
	.proc	07
f.1204:
	save	%sp, -120, %sp
	std	%i0, [%fp-24]
	mov	%g2, %g1
	ldd	[%fp-24], %f10
	ldd	[%fp-24], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%g1+40], %f12
	ldd	[%g1+40], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f10
	ldd	[%g1+32], %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-24], %f12
	ldd	[%fp-24], %f8
	fmuld	%f12, %f8, %f12
	ldd	[%g1+40], %f14
	ldd	[%g1+40], %f8
	fmuld	%f14, %f8, %f8
	fsubd	%f12, %f8, %f12
	ldd	[%g1+24], %f8
	fsubd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-8]
	ldd	[%g1+40], %f8
	ldd	[%fp-24], %f10
	fsubd	%f10, %f8, %f10
	ldd	[%g1+16], %f12
	ldd	[%g1+8], %f8
	faddd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fsubd	%f10, %f8, %f10
	ldd	[%g1], %f8
	fsubd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	f.1204, .-f.1204
	.section	".rodata"
	.align 8
.LC10:
	.asciz	"INFO"
	.align 8
.LC11:
	.asciz	"main.c"
	.align 8
.LC12:
	.asciz	"q_3.x = %f"
	.align 8
.LC13:
	.asciz	"q_3.y = %f"
	.align 8
.LC14:
	.asciz	"q_3.z = %f"
	.align 8
.LC15:
	.asciz	"q_4 = %f"
	.align 8
.LC6:
	.long	1069757235
	.long	858993459
	.align 8
.LC7:
	.long	1072693248
	.long	0
	.align 8
.LC8:
	.long	0
	.long	0
	.align 8
.LC9:
	.long	-1074790400
	.long	0
	.section	".text"
	.align 4
	.global quest
	.type	quest, #function
	.proc	020
quest:
	save	%sp, -920, %sp
	st	%i0, [%fp+68]
	mov	%sp, %g1
	mov	%g1, %l4
	mov	5, %g1
	stb	%g1, [%fp-25]
	ldub	[%fp-25], %g4
	and	%g4, 0xff, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-32]
	and	%g4, 0xff, %g1
	mov	0, %i0
	mov	%g1, %i1
	mov	%i0, %g2
	mov	%i1, %g3
	addcc	%g3, %g3, %l3
	addx	%g2, %g2, %l2
	mov	%l2, %g2
	mov	%l3, %g3
	addcc	%g3, %i1, %o5
	addx	%g2, %i0, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %o2
	or	%g1, %o2, %o2
	sll	%g3, 6, %o3
	mov	%o2, %g2
	mov	%o3, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	and	%g4, 0xff, %g1
	mov	0, %i0
	mov	%g1, %i1
	mov	%i0, %g2
	mov	%i1, %g3
	addcc	%g3, %g3, %o3
	addx	%g2, %g2, %o2
	mov	%o2, %g2
	mov	%o3, %g3
	addcc	%g3, %i1, %o5
	addx	%g2, %i0, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %o4
	or	%g1, %o4, %o4
	sll	%g3, 6, %o5
	mov	%o4, %g2
	mov	%o5, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g1, 7, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	sub	%sp, %g1, %sp
	add	%sp, 100, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	st	%g1, [%fp-36]
	ldub	[%fp-25], %g4
	and	%g4, 0xff, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-40]
	and	%g4, 0xff, %g1
	mov	0, %i0
	mov	%g1, %i1
	mov	%i0, %g2
	mov	%i1, %g3
	addcc	%g3, %g3, %o5
	addx	%g2, %g2, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	addcc	%g3, %i1, %o5
	addx	%g2, %i0, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %i2
	or	%g1, %i2, %i2
	sll	%g3, 6, %i3
	mov	%i2, %g2
	mov	%i3, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	and	%g4, 0xff, %g1
	mov	0, %i2
	mov	%g1, %i3
	mov	%i2, %g2
	mov	%i3, %g3
	addcc	%g3, %g3, %i1
	addx	%g2, %g2, %i0
	mov	%i0, %g2
	mov	%i1, %g3
	addcc	%g3, %i3, %o5
	addx	%g2, %i2, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %i4
	or	%g1, %i4, %i4
	sll	%g3, 6, %i5
	mov	%i4, %g2
	mov	%i5, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g1, 7, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	sub	%sp, %g1, %sp
	add	%sp, 100, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	st	%g1, [%fp-44]
	sethi	%hi(.LC6), %g1
	or	%g1, %lo(.LC6), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp-56]
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g2
	add	%g2, -1, %g2
	st	%g2, [%fp-60]
	and	%g1, 0xff, %g2
	mov	%g2, %g3
	mov	0, %g2
	srl	%g3, 26, %g4
	sll	%g2, 6, %l0
	or	%g4, %l0, %l0
	sll	%g3, 6, %l1
	and	%g1, 0xff, %g2
	mov	%g2, %g3
	mov	0, %g2
	srl	%g3, 26, %g4
	sll	%g2, 6, %o0
	or	%g4, %o0, %o0
	sll	%g3, 6, %o1
	and	%g1, 0xff, %g1
	sll	%g1, 3, %g1
	add	%g1, 7, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	sub	%sp, %g1, %sp
	add	%sp, 100, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	st	%g1, [%fp-64]
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-804]
	ld	[%fp-804], %f10
	fitod	%f10, %f8
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f10
	fdivd	%f10, %f8, %f8
	ld	[%fp-64], %g1
	std	%f8, [%g1]
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-804]
	ld	[%fp-804], %f12
	fitod	%f12, %f8
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f10
	fdivd	%f10, %f8, %f8
	ld	[%fp-64], %g1
	std	%f8, [%g1+8]
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-804]
	ld	[%fp-804], %f13
	fitod	%f13, %f8
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f10
	fdivd	%f10, %f8, %f8
	ld	[%fp-64], %g1
	std	%f8, [%g1+16]
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-804]
	ld	[%fp-804], %f10
	fitod	%f10, %f8
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f10
	fdivd	%f10, %f8, %f8
	ld	[%fp-64], %g1
	std	%f8, [%g1+24]
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-804]
	ld	[%fp-804], %f12
	fitod	%f12, %f8
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f10
	fdivd	%f10, %f8, %f8
	ld	[%fp-64], %g1
	std	%f8, [%g1+32]
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp-72]
	add	%fp, -192, %g1
	mov	%g1, %o0
	mov	0, %o1
	call	matrix_construct, 0
	 nop
	add	%fp, -264, %g1
	mov	%g1, %o0
	mov	0, %o1
	call	matrix_construct, 0
	 nop
	add	%fp, -288, %g1
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	stb	%g0, [%fp-1]
	st	%g0, [%fp-8]
	st	%g0, [%fp-8]
	b	.L54
	 nop
.L57:
	ld	[%fp-8], %g1
	cmp	%g1, 4
	bg	.L55
	 nop
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-44], %g2
	add	%g2, %g1, %g1
	ld	[%fp+68], %g3
	ld	[%fp-8], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f10
	ld	[%fp+68], %g2
	add	%g2, 80, %g3
	ld	[%fp-8], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f8
	ld	[%fp+68], %g2
	add	%g2, 160, %g3
	ld	[%fp-8], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	b	.L56
	 nop
.L55:
	ld	[%fp-8], %g1
	add	%g1, -5, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-36], %g2
	add	%g2, %g1, %g1
	ld	[%fp+68], %g3
	ld	[%fp-8], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f10
	ld	[%fp+68], %g2
	add	%g2, 80, %g3
	ld	[%fp-8], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f8
	ld	[%fp+68], %g2
	add	%g2, 160, %g3
	ld	[%fp-8], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
.L56:
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L54:
	ld	[%fp-8], %g1
	cmp	%g1, 9
	ble	.L57
	 nop
.L73:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 1
	bne	.L58
	 nop
	st	%g0, [%fp-8]
	b	.L59
	 nop
.L60:
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+8], %f8
	fnegs	%f8, %f8
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+8]
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+16], %f8
	fnegs	%f8, %f8
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+16]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L59:
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bg	.L60
	 nop
.L58:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bne	.L61
	 nop
	st	%g0, [%fp-8]
	b	.L62
	 nop
.L63:
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1], %f8
	fnegs	%f8, %f8
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+16], %f8
	fnegs	%f8, %f8
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+16]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L62:
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bg	.L63
	 nop
.L61:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 3
	bne	.L64
	 nop
	st	%g0, [%fp-8]
	b	.L65
	 nop
.L66:
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+8], %f8
	fnegs	%f8, %f8
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+8]
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1], %f8
	fnegs	%f8, %f8
	ld	[%fp-44], %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L65:
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bg	.L66
	 nop
.L64:
	st	%g0, [%fp-8]
	b	.L67
	 nop
.L68:
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-36], %g2
	add	%g2, %g1, %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-44], %g2
	add	%g2, %g1, %g1
	add	%fp, -792, %g2
	mov	%g2, %o0
	mov	%g3, %o1
	mov	%g1, %o2
	call	outer_product, 0
	 nop
	ld	[%fp-64], %g2
	ld	[%fp-8], %g1
	sll	%g1, 3, %g1
	add	%g2, %g1, %g1
	ldd	[%g1], %f8
	add	%fp, -792, %g2
	add	%fp, -792, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	std	%f8, [%fp-816]
	ldd	[%fp-816], %o2
	call	scale_matrix, 0
	 nop
	add	%fp, -192, %g3
	add	%fp, -192, %g2
	add	%fp, -792, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_matrix, 0
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L67:
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bg	.L68
	 nop
	st	%g0, [%fp-8]
	b	.L69
	 nop
.L70:
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-36], %g2
	add	%g2, %g1, %g3
	ld	[%fp-8], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-44], %g2
	add	%g2, %g1, %g1
	add	%fp, -648, %g2
	mov	%g2, %o0
	mov	%g3, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	ld	[%fp-64], %g2
	ld	[%fp-8], %g1
	sll	%g1, 3, %g1
	add	%g2, %g1, %g1
	ldd	[%g1], %f8
	add	%fp, -648, %g1
	mov	%g1, %o0
	std	%f8, [%fp-816]
	ldd	[%fp-816], %o4
	mov	%o4, %o1
	mov	%o5, %o2
	call	scale_vec, 0
	 nop
	add	%fp, -288, %g3
	add	%fp, -288, %g2
	add	%fp, -648, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L69:
	ldub	[%fp-25], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bg	.L70
	 nop
	add	%fp, -192, %g1
	mov	%g1, %o0
	call	trace, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-536]
	add	%fp, -264, %g2
	add	%fp, -192, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	T, 0
	 nop
	add	%fp, -264, %g3
	add	%fp, -264, %g2
	add	%fp, -192, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_matrix, 0
	 nop
	add	%fp, -360, %g2
	add	%fp, -264, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	adjoint, 0
	 nop
	add	%fp, -360, %g1
	mov	%g1, %o0
	call	trace, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-544]
	ldd	[%fp-288], %f10
	ldd	[%fp-288], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%fp-280], %f12
	ldd	[%fp-280], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-272], %f12
	ldd	[%fp-272], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-552]
	add	%fp, -264, %g1
	mov	%g1, %o0
	call	det, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-568]
	add	%fp, -600, %g3
	add	%fp, -264, %g2
	add	%fp, -288, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	matmul, 0
	 nop
	add	%fp, -288, %g2
	add	%fp, -600, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-560]
	add	%fp, -624, %g3
	add	%fp, -264, %g2
	add	%fp, -600, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	matmul, 0
	 nop
	add	%fp, -288, %g2
	add	%fp, -624, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-576]
	ldd	[%fp-72], %f8
	std	%f8, [%fp-16]
	st	%g0, [%fp-8]
	b	.L71
	 nop
.L72:
	add	%fp, -576, %g1
	mov	%g1, %g2
	ldd	[%fp-16], %o0
	call	f.1204, 0
	 nop
	std	%f0, [%fp-80]
	add	%fp, -576, %g1
	mov	%g1, %g2
	ldd	[%fp-16], %o0
	call	f_bar.1209, 0
	 nop
	std	%f0, [%fp-88]
	ldd	[%fp-80], %f10
	ldd	[%fp-88], %f8
	fdivd	%f10, %f8, %f8
	ldd	[%fp-16], %f10
	fsubd	%f10, %f8, %f8
	std	%f8, [%fp-16]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L71:
	ld	[%fp-8], %g1
	cmp	%g1, 4
	ble	.L72
	 nop
	ldd	[%fp-536], %f8
	ldd	[%fp-16], %f10
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-16]
	add	%fp, -792, %g1
	mov	%g1, %o0
	mov	1, %o1
	call	matrix_construct, 0
	 nop
	add	%fp, -792, %g2
	add	%fp, -792, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	ldd	[%fp-16], %o2
	call	scale_matrix, 0
	 nop
	add	%fp, -432, %g2
	add	%fp, -264, %g1
	sethi	%hi(.LC9), %g3
	or	%g3, %lo(.LC9), %g3
	ldd	[%g3], %f8
	mov	%g2, %o0
	mov	%g1, %o1
	std	%f8, [%fp-816]
	ldd	[%fp-816], %o2
	call	scale_matrix, 0
	 nop
	add	%fp, -432, %g3
	add	%fp, -432, %g2
	add	%fp, -792, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_matrix, 0
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
	add	%fp, -432, %g1
	mov	%g1, %o0
	call	det, 0
	 nop
	fmovs	%f0, %f10
	fmovs	%f1, %f11
	ldd	[%fp-56], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L73
	 nop
	add	%fp, -432, %g1
	mov	%g1, %o0
	call	det, 0
	 nop
	std	%f0, [%fp-24]
	add	%fp, -528, %g2
	add	%fp, -432, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	adjoint, 0
	 nop
	add	%fp, -456, %g3
	add	%fp, -528, %g2
	add	%fp, -288, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	matmul, 0
	 nop
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bne	.L74
	 nop
	add	%fp, -672, %g1
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	add	%fp, -672, %g2
	add	%fp, -456, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	fnegs	%f8, %f8
	std	%f8, [%fp-96]
	add	%fp, -456, %g3
	add	%fp, -672, %g2
	add	%fp, -456, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	add	%fp, -672, %g1
	mov	%g1, %o0
	ld	[%fp-24], %o1
	ld	[%fp-20], %o2
	call	scale_vec, 0
	 nop
	add	%fp, -456, %g3
	add	%fp, -456, %g2
	add	%fp, -672, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ldd	[%fp-96], %f8
	std	%f8, [%fp-24]
	b	.L75
	 nop
.L74:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 3
	bne	.L76
	 nop
	add	%fp, -696, %g1
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	add	%fp, -696, %g2
	add	%fp, -456, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	fnegs	%f8, %f8
	std	%f8, [%fp-104]
	add	%fp, -456, %g3
	add	%fp, -696, %g2
	add	%fp, -456, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	add	%fp, -696, %g1
	mov	%g1, %o0
	ld	[%fp-24], %o1
	ld	[%fp-20], %o2
	call	scale_vec, 0
	 nop
	add	%fp, -456, %g3
	add	%fp, -456, %g2
	add	%fp, -696, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ldd	[%fp-104], %f8
	std	%f8, [%fp-24]
	b	.L75
	 nop
.L76:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 4
	bne	.L75
	 nop
	add	%fp, -720, %g1
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-816]
	ldd	[%fp-816], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	add	%fp, -720, %g2
	add	%fp, -456, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	fnegs	%f8, %f8
	std	%f8, [%fp-112]
	add	%fp, -456, %g3
	add	%fp, -720, %g2
	add	%fp, -456, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	add	%fp, -720, %g1
	mov	%g1, %o0
	ld	[%fp-24], %o1
	ld	[%fp-20], %o2
	call	scale_vec, 0
	 nop
	add	%fp, -456, %g3
	add	%fp, -456, %g2
	add	%fp, -720, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ldd	[%fp-112], %f8
	std	%f8, [%fp-24]
.L75:
	ldd	[%fp-456], %f10
	ldd	[%fp-456], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%fp-448], %f12
	ldd	[%fp-448], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-440], %f12
	ldd	[%fp-440], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-24], %f12
	ldd	[%fp-24], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-816]
	ldd	[%fp-816], %o0
	call	sqrt, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-804]
	ld	[%fp-804], %f10
	fitod	%f10, %f8
	std	%f8, [%fp-120]
	ldd	[%fp-456], %f10
	ldd	[%fp-120], %f8
	fdivd	%f10, %f8, %f12
	std	%f12, [%fp-816]
	ldd	[%fp-816], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1252), %g1
	or	%g1, %lo(__func__.1252), %o2
	mov	326, %o3
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %o4
	call	__cortos_log_printf, 0
	 nop
	ldd	[%fp-448], %f10
	ldd	[%fp-120], %f8
	fdivd	%f10, %f8, %f12
	std	%f12, [%fp-816]
	ldd	[%fp-816], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1252), %g1
	or	%g1, %lo(__func__.1252), %o2
	mov	327, %o3
	sethi	%hi(.LC13), %g1
	or	%g1, %lo(.LC13), %o4
	call	__cortos_log_printf, 0
	 nop
	ldd	[%fp-440], %f10
	ldd	[%fp-120], %f8
	fdivd	%f10, %f8, %f12
	std	%f12, [%fp-816]
	ldd	[%fp-816], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1252), %g1
	or	%g1, %lo(__func__.1252), %o2
	mov	328, %o3
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %o4
	call	__cortos_log_printf, 0
	 nop
	ldd	[%fp-24], %f10
	ldd	[%fp-120], %f8
	fdivd	%f10, %f8, %f12
	std	%f12, [%fp-816]
	ldd	[%fp-816], %g2
	std	%g2, [%fp-800]
	ld	[%fp-796], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1252), %g1
	or	%g1, %lo(__func__.1252), %o2
	mov	329, %o3
	sethi	%hi(.LC15), %g1
	or	%g1, %lo(.LC15), %o4
	call	__cortos_log_printf, 0
	 nop
	mov	%l4, %sp
	restore
	jmp	%o7+8
	 nop
	.size	quest, .-quest
	.align 4
	.type	f_bar.1209, #function
	.proc	07
f_bar.1209:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	mov	%g2, %g1
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f10
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f12
	ldd	[%fp-16], %f8
	fmuld	%f12, %f8, %f12
	ldd	[%g1+40], %f8
	faddd	%f8, %f8, %f14
	ldd	[%g1+40], %f8
	fmuld	%f14, %f8, %f8
	fsubd	%f12, %f8, %f12
	ldd	[%g1+32], %f8
	faddd	%f12, %f8, %f12
	ldd	[%g1+24], %f8
	fsubd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-8]
	ldd	[%g1+16], %f8
	ldd	[%fp-8], %f10
	fsubd	%f10, %f8, %f10
	ldd	[%g1+8], %f8
	fsubd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	f_bar.1209, .-f_bar.1209
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	save	%sp, -104, %sp
	mov	3, %g1
	st	%g1, [%fp-4]
	mov	10, %g1
	st	%g1, [%fp-8]
	sethi	%hi(data), %g1
	or	%g1, %lo(data), %o0
	call	quest, 0
	 nop
	mov	0, %o0
	call	cortos_exit, 0
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	main, .-main
	.section	".rodata"
	.align 8
	.type	__func__.1252, #object
	.size	__func__.1252, 6
__func__.1252:
	.asciz	"quest"
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
