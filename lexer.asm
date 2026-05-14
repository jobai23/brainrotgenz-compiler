	.file	"lexer.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "D:/brainrotgenz compiler" "src/lexer.c"
	.def	make_token;	.scl	3;	.type	32;	.endef
	.seh_proc	make_token
make_token:
.LFB108:
	.file 1 "src/lexer.c"
	.loc 1 17 70
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	.loc 1 19 13
	movl	24(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 20 15
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	.loc 1 20 13 discriminator 1
	movq	%rax, -24(%rbp)
	.loc 1 21 13
	movl	40(%rbp), %eax
	movl	%eax, -16(%rbp)
	.loc 1 22 12
	movq	16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 1 23 1
	movq	16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "gooner\0"
.LC1:
	.ascii "baddie\0"
.LC2:
	.ascii "slime\0"
.LC3:
	.ascii "goon\0"
.LC4:
	.ascii "bum\0"
.LC5:
	.ascii "jit\0"
.LC6:
	.ascii "W\0"
.LC7:
	.ascii "L\0"
.LC8:
	.ascii "cook\0"
.LC9:
	.ascii "cooked\0"
.LC10:
	.ascii "slide\0"
.LC11:
	.ascii "lit\0"
.LC12:
	.ascii "syabu\0"
.LC13:
	.ascii "gumit\0"
.LC14:
	.ascii "yn\0"
.LC15:
	.ascii "fynshyt\0"
.LC16:
	.ascii "opps\0"
.LC17:
	.ascii "fap\0"
.LC18:
	.ascii "benjis\0"
.LC19:
	.ascii "cap\0"
.LC20:
	.ascii "gyatt\0"
.LC21:
	.ascii "bugging\0"
	.text
	.def	check_keyword;	.scl	3;	.type	32;	.endef
	.seh_proc	check_keyword
check_keyword:
.LFB109:
	.loc 1 30 50
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 33 9
	leaq	.LC0(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 33 8 discriminator 1
	testl	%eax, %eax
	jne	.L4
	.loc 1 33 50 discriminator 2
	movl	$3, %eax
	.loc 1 33 50 is_stmt 0
	jmp	.L5
.L4:
	.loc 1 34 9 is_stmt 1
	leaq	.LC1(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 34 8 discriminator 1
	testl	%eax, %eax
	jne	.L6
	.loc 1 34 50 discriminator 2
	movl	$4, %eax
	.loc 1 34 50 is_stmt 0
	jmp	.L5
.L6:
	.loc 1 35 9 is_stmt 1
	leaq	.LC2(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 35 8 discriminator 1
	testl	%eax, %eax
	jne	.L7
	.loc 1 35 50 discriminator 2
	movl	$5, %eax
	.loc 1 35 50 is_stmt 0
	jmp	.L5
.L7:
	.loc 1 36 9 is_stmt 1
	leaq	.LC3(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 36 8 discriminator 1
	testl	%eax, %eax
	jne	.L8
	.loc 1 36 50 discriminator 2
	movl	$6, %eax
	.loc 1 36 50 is_stmt 0
	jmp	.L5
.L8:
	.loc 1 37 9 is_stmt 1
	leaq	.LC4(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 37 8 discriminator 1
	testl	%eax, %eax
	jne	.L9
	.loc 1 37 50 discriminator 2
	movl	$7, %eax
	.loc 1 37 50 is_stmt 0
	jmp	.L5
.L9:
	.loc 1 40 9 is_stmt 1
	leaq	.LC5(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 40 8 discriminator 1
	testl	%eax, %eax
	jne	.L10
	.loc 1 40 50 discriminator 2
	movl	$8, %eax
	.loc 1 40 50 is_stmt 0
	jmp	.L5
.L10:
	.loc 1 43 9 is_stmt 1
	leaq	.LC6(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 43 8 discriminator 1
	testl	%eax, %eax
	jne	.L11
	.loc 1 43 50 discriminator 2
	movl	$9, %eax
	.loc 1 43 50 is_stmt 0
	jmp	.L5
.L11:
	.loc 1 44 9 is_stmt 1
	leaq	.LC7(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 44 8 discriminator 1
	testl	%eax, %eax
	jne	.L12
	.loc 1 44 50 discriminator 2
	movl	$10, %eax
	.loc 1 44 50 is_stmt 0
	jmp	.L5
.L12:
	.loc 1 47 9 is_stmt 1
	leaq	.LC8(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 47 8 discriminator 1
	testl	%eax, %eax
	jne	.L13
	.loc 1 47 50 discriminator 2
	movl	$11, %eax
	.loc 1 47 50 is_stmt 0
	jmp	.L5
.L13:
	.loc 1 48 9 is_stmt 1
	leaq	.LC9(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 48 8 discriminator 1
	testl	%eax, %eax
	jne	.L14
	.loc 1 48 50 discriminator 2
	movl	$13, %eax
	.loc 1 48 50 is_stmt 0
	jmp	.L5
.L14:
	.loc 1 49 9 is_stmt 1
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 49 8 discriminator 1
	testl	%eax, %eax
	jne	.L15
	.loc 1 49 50 discriminator 2
	movl	$14, %eax
	.loc 1 49 50 is_stmt 0
	jmp	.L5
.L15:
	.loc 1 50 9 is_stmt 1
	leaq	.LC11(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 50 8 discriminator 1
	testl	%eax, %eax
	jne	.L16
	.loc 1 50 50 discriminator 2
	movl	$12, %eax
	.loc 1 50 50 is_stmt 0
	jmp	.L5
.L16:
	.loc 1 53 9 is_stmt 1
	leaq	.LC12(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 53 8 discriminator 1
	testl	%eax, %eax
	jne	.L17
	.loc 1 53 50 discriminator 2
	movl	$15, %eax
	.loc 1 53 50 is_stmt 0
	jmp	.L5
.L17:
	.loc 1 54 9 is_stmt 1
	leaq	.LC13(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 54 8 discriminator 1
	testl	%eax, %eax
	jne	.L18
	.loc 1 54 50 discriminator 2
	movl	$16, %eax
	.loc 1 54 50 is_stmt 0
	jmp	.L5
.L18:
	.loc 1 57 9 is_stmt 1
	leaq	.LC14(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 57 8 discriminator 1
	testl	%eax, %eax
	jne	.L19
	.loc 1 57 50 discriminator 2
	movl	$17, %eax
	.loc 1 57 50 is_stmt 0
	jmp	.L5
.L19:
	.loc 1 58 9 is_stmt 1
	leaq	.LC15(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 58 8 discriminator 1
	testl	%eax, %eax
	jne	.L20
	.loc 1 58 50 discriminator 2
	movl	$18, %eax
	.loc 1 58 50 is_stmt 0
	jmp	.L5
.L20:
	.loc 1 59 9 is_stmt 1
	leaq	.LC16(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 59 8 discriminator 1
	testl	%eax, %eax
	jne	.L21
	.loc 1 59 50 discriminator 2
	movl	$19, %eax
	.loc 1 59 50 is_stmt 0
	jmp	.L5
.L21:
	.loc 1 62 9 is_stmt 1
	leaq	.LC17(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 62 8 discriminator 1
	testl	%eax, %eax
	jne	.L22
	.loc 1 62 50 discriminator 2
	movl	$27, %eax
	.loc 1 62 50 is_stmt 0
	jmp	.L5
.L22:
	.loc 1 63 9 is_stmt 1
	leaq	.LC18(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 63 8 discriminator 1
	testl	%eax, %eax
	jne	.L23
	.loc 1 63 50 discriminator 2
	movl	$29, %eax
	.loc 1 63 50 is_stmt 0
	jmp	.L5
.L23:
	.loc 1 66 9 is_stmt 1
	leaq	.LC19(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 66 8 discriminator 1
	testl	%eax, %eax
	jne	.L24
	.loc 1 66 50 discriminator 2
	movl	$24, %eax
	.loc 1 66 50 is_stmt 0
	jmp	.L5
.L24:
	.loc 1 67 9 is_stmt 1
	leaq	.LC20(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 67 8 discriminator 1
	testl	%eax, %eax
	jne	.L25
	.loc 1 67 50 discriminator 2
	movl	$25, %eax
	.loc 1 67 50 is_stmt 0
	jmp	.L5
.L25:
	.loc 1 68 9 is_stmt 1
	leaq	.LC21(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 68 8 discriminator 1
	testl	%eax, %eax
	jne	.L26
	.loc 1 68 50 discriminator 2
	movl	$26, %eax
	.loc 1 68 50 is_stmt 0
	jmp	.L5
.L26:
	.loc 1 71 12 is_stmt 1
	movl	$2, %eax
.L5:
	.loc 1 72 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.seh_endproc
	.section .rdata,"dr"
.LC22:
	.ascii "error: out of memory\12\0"
.LC23:
	.ascii "diabolical\0"
.LC24:
	.ascii "no\0"
.LC25:
	.ascii "no cap\0"
.LC26:
	.ascii "risky\0"
.LC27:
	.ascii "shoot\0"
.LC28:
	.ascii "risky shoot\0"
.LC29:
	.ascii "say\0"
.LC30:
	.ascii "less\0"
.LC31:
	.ascii "say less\0"
.LC32:
	.ascii "on\0"
.LC33:
	.ascii "em\0"
.LC34:
	.ascii "slide on em\0"
.LC35:
	.ascii "put\0"
.LC36:
	.ascii "the fires in the bag\0"
.LC37:
	.ascii "put the fires in the bag\0"
.LC38:
	.ascii "double\0"
.LC39:
	.ascii "it and give it to the next\0"
	.align 8
.LC40:
	.ascii "double it and give it to the next\0"
.LC41:
	.ascii "gwak\0"
.LC42:
	.ascii "3k\0"
.LC43:
	.ascii "gwak 3k\0"
	.align 8
.LC44:
	.ascii "error: unknown character '%c' on line %d\12\0"
.LC45:
	.ascii "EOF\0"
	.text
	.globl	tokenize
	.def	tokenize;	.scl	2;	.type	32;	.endef
	.seh_proc	tokenize
tokenize:
.LFB110:
	.loc 1 79 55
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$168, %rsp
	.seh_stackalloc	168
	.cfi_def_cfa_offset 192
	leaq	160(%rsp), %rbp
	.seh_setframe	%rbp, 160
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	.loc 1 81 9
	movl	$256, -4(%rbp)
	.loc 1 82 9
	movl	$0, -8(%rbp)
	.loc 1 83 9
	movl	$1, -12(%rbp)
	.loc 1 84 9
	movl	$0, -16(%rbp)
	.loc 1 85 20
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	.loc 1 85 9 discriminator 1
	movl	%eax, -28(%rbp)
	.loc 1 88 21
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 88 37
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 88 21
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -24(%rbp)
	.loc 1 89 8
	cmpq	$0, -24(%rbp)
	jne	.L30
	.loc 1 90 17
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL0:
	movq	%rax, %rdx
	.loc 1 90 9 discriminator 1
	leaq	.LC22(%rip), %rax
	movq	%rdx, %r9
	movl	$21, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 1 91 16
	movl	$0, %eax
	jmp	.L29
.L102:
.LBB2:
	.loc 1 97 19
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 97 12
	cmpb	$32, %al
	je	.L31
	.loc 1 97 39 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 97 30 discriminator 2
	cmpb	$9, %al
	je	.L31
	.loc 1 97 60 discriminator 4
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 97 51 discriminator 4
	cmpb	$13, %al
	jne	.L32
.L31:
	.loc 1 98 14
	addl	$1, -16(%rbp)
	.loc 1 99 13
	jmp	.L30
.L32:
	.loc 1 103 19
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 103 12
	cmpb	$10, %al
	jne	.L34
	.loc 1 104 17
	addl	$1, -12(%rbp)
	.loc 1 105 14
	addl	$1, -16(%rbp)
	.loc 1 106 13
	jmp	.L30
.L34:
	.loc 1 110 27
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 110 13
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 1 110 12
	cmpl	$9, %eax
	ja	.L35
.LBB3:
	.loc 1 111 9
	movl	-16(%rbp), %eax
	movl	%eax, -76(%rbp)
	.loc 1 112 11
	jmp	.L36
.L38:
	.loc 1 112 44 discriminator 3
	addl	$1, -16(%rbp)
.L36:
	.loc 1 112 20 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L37
	.loc 1 112 37 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 112 23 discriminator 2
	movsbl	%al, %eax
	.loc 1 112 20 discriminator 2
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	.L38
.L37:
	.loc 1 114 8
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L39
	.loc 1 114 26 discriminator 1
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 114 17 discriminator 1
	cmpb	$46, %al
	jne	.L39
	.loc 1 115 10
	addl	$1, -16(%rbp)
	.loc 1 116 15
	jmp	.L40
.L41:
	.loc 1 116 48 discriminator 3
	addl	$1, -16(%rbp)
.L40:
	.loc 1 116 24 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L39
	.loc 1 116 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 116 27 discriminator 2
	movsbl	%al, %eax
	.loc 1 116 24 discriminator 2
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	.L41
.L39:
	.loc 1 118 9
	movl	-16(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	.loc 1 119 32
	movl	-80(%rbp), %eax
	addl	$1, %eax
	.loc 1 119 17
	cltq
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -88(%rbp)
	.loc 1 120 5
	movl	-80(%rbp), %eax
	movslq	%eax, %rcx
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 120 25
	movq	32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 120 5
	movq	-88(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	strncpy
	.loc 1 121 8
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 121 18
	movb	$0, (%rax)
	.loc 1 122 17
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 122 11
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 122 23
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 123 5
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 124 5
	jmp	.L30
.L35:
.LBE3:
	.loc 1 128 19
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 128 12
	cmpb	$34, %al
	jne	.L42
.LBB4:
	.loc 1 129 14
	addl	$1, -16(%rbp)
	.loc 1 130 17
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)
	.loc 1 131 19
	jmp	.L43
.L45:
	.loc 1 131 50 discriminator 3
	addl	$1, -16(%rbp)
.L43:
	.loc 1 131 28 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L44
	.loc 1 131 37 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 131 28 discriminator 2
	cmpb	$34, %al
	jne	.L45
.L44:
	.loc 1 132 17
	movl	-16(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	.loc 1 133 40
	movl	-60(%rbp), %eax
	addl	$1, %eax
	.loc 1 133 25
	cltq
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -72(%rbp)
	.loc 1 134 13
	movl	-60(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 134 33
	movq	32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 134 13
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	strncpy
	.loc 1 135 16
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 135 26
	movb	$0, (%rax)
	.loc 1 136 25
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 136 19
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 136 31
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 137 13
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 138 14
	addl	$1, -16(%rbp)
	.loc 1 139 13
	jmp	.L30
.L42:
.LBE4:
	.loc 1 143 27
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 143 13
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isalpha(%rip), %rax
	call	*%rax
.LVL1:
	.loc 1 143 12 discriminator 1
	testl	%eax, %eax
	jne	.L46
	.loc 1 143 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 143 32 discriminator 2
	cmpb	$95, %al
	jne	.L47
.L46:
.LBB5:
	.loc 1 144 17
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 145 19
	jmp	.L48
.L50:
	.loc 1 145 74 discriminator 6
	addl	$1, -16(%rbp)
.L48:
	.loc 1 145 28 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L49
	.loc 1 145 46 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 145 32 discriminator 2
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isalnum(%rip), %rax
	call	*%rax
.LVL2:
	.loc 1 145 28 discriminator 3
	testl	%eax, %eax
	jne	.L50
	.loc 1 145 60 discriminator 5
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 145 51 discriminator 5
	cmpb	$95, %al
	je	.L50
.L49:
	.loc 1 146 17
	movl	-16(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	.loc 1 147 42
	movl	-36(%rbp), %eax
	addl	$1, %eax
	.loc 1 147 26
	cltq
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -48(%rbp)
	.loc 1 148 13
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 148 34
	movq	32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 148 13
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	strncpy
	.loc 1 149 17
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 149 28
	movb	$0, (%rax)
	.loc 1 154 17
	leaq	.LC23(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 154 16 discriminator 1
	testl	%eax, %eax
	jne	.L51
	.loc 1 155 23
	jmp	.L52
.L54:
	.loc 1 155 55 discriminator 3
	addl	$1, -16(%rbp)
.L52:
	.loc 1 155 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L53
	.loc 1 155 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 155 32 discriminator 2
	cmpb	$10, %al
	jne	.L54
.L53:
	.loc 1 156 17
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 157 17
	jmp	.L30
.L51:
	.loc 1 161 17
	leaq	.LC24(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 161 16 discriminator 1
	testl	%eax, %eax
	jne	.L55
	.loc 1 162 23
	jmp	.L56
.L58:
	.loc 1 162 54 discriminator 3
	addl	$1, -16(%rbp)
.L56:
	.loc 1 162 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L57
	.loc 1 162 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 162 32 discriminator 2
	cmpb	$32, %al
	je	.L58
.L57:
	.loc 1 163 21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC19(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 163 20 discriminator 1
	testl	%eax, %eax
	jne	.L55
	.loc 1 164 23
	addl	$3, -16(%rbp)
	.loc 1 165 33
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 165 27
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 165 39
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC25(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$23, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 166 21
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 167 21
	jmp	.L30
.L55:
	.loc 1 172 17
	leaq	.LC26(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 172 16 discriminator 1
	testl	%eax, %eax
	jne	.L59
	.loc 1 173 23
	jmp	.L60
.L62:
	.loc 1 173 54 discriminator 3
	addl	$1, -16(%rbp)
.L60:
	.loc 1 173 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L61
	.loc 1 173 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 173 32 discriminator 2
	cmpb	$32, %al
	je	.L62
.L61:
	.loc 1 174 21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC27(%rip), %rdx
	movl	$5, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 174 20 discriminator 1
	testl	%eax, %eax
	jne	.L59
	.loc 1 175 23
	addl	$5, -16(%rbp)
	.loc 1 176 33
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 176 27
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 176 39
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC28(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$20, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 177 21
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 178 21
	jmp	.L30
.L59:
	.loc 1 183 17
	leaq	.LC29(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 183 16 discriminator 1
	testl	%eax, %eax
	jne	.L63
	.loc 1 184 23
	jmp	.L64
.L66:
	.loc 1 184 54 discriminator 3
	addl	$1, -16(%rbp)
.L64:
	.loc 1 184 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L65
	.loc 1 184 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 184 32 discriminator 2
	cmpb	$32, %al
	je	.L66
.L65:
	.loc 1 185 21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC30(%rip), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 185 20 discriminator 1
	testl	%eax, %eax
	jne	.L63
	.loc 1 186 23
	addl	$4, -16(%rbp)
	.loc 1 187 33
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 187 27
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 187 39
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC31(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$21, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 188 21
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 189 21
	jmp	.L30
.L63:
	.loc 1 194 17
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 194 16 discriminator 1
	testl	%eax, %eax
	jne	.L67
	.loc 1 195 23
	jmp	.L68
.L70:
	.loc 1 195 54 discriminator 3
	addl	$1, -16(%rbp)
.L68:
	.loc 1 195 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L69
	.loc 1 195 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 195 32 discriminator 2
	cmpb	$32, %al
	je	.L70
.L69:
	.loc 1 196 21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC32(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 196 20 discriminator 1
	testl	%eax, %eax
	jne	.L67
	.loc 1 197 23
	addl	$2, -16(%rbp)
	.loc 1 198 27
	jmp	.L71
.L73:
	.loc 1 198 58 discriminator 3
	addl	$1, -16(%rbp)
.L71:
	.loc 1 198 36 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L72
	.loc 1 198 45 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 198 36 discriminator 2
	cmpb	$32, %al
	je	.L73
.L72:
	.loc 1 199 25
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC33(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 199 24 discriminator 1
	testl	%eax, %eax
	jne	.L67
	.loc 1 200 27
	addl	$2, -16(%rbp)
	.loc 1 201 37
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 201 31
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 201 43
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC34(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$22, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 202 25
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 203 25
	jmp	.L30
.L67:
	.loc 1 209 17
	leaq	.LC35(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 209 16 discriminator 1
	testl	%eax, %eax
	jne	.L74
	.loc 1 210 23
	jmp	.L75
.L77:
	.loc 1 210 54 discriminator 3
	addl	$1, -16(%rbp)
.L75:
	.loc 1 210 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L76
	.loc 1 210 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 210 32 discriminator 2
	cmpb	$32, %al
	je	.L77
.L76:
	.loc 1 211 21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC36(%rip), %rdx
	movl	$20, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 211 20 discriminator 1
	testl	%eax, %eax
	jne	.L74
	.loc 1 212 23
	addl	$20, -16(%rbp)
	.loc 1 213 33
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 213 27
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 213 39
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC37(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$32, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 214 21
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 215 21
	jmp	.L30
.L74:
	.loc 1 220 17
	leaq	.LC38(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 220 16 discriminator 1
	testl	%eax, %eax
	jne	.L78
	.loc 1 221 23
	jmp	.L79
.L81:
	.loc 1 221 54 discriminator 3
	addl	$1, -16(%rbp)
.L79:
	.loc 1 221 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L80
	.loc 1 221 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 221 32 discriminator 2
	cmpb	$32, %al
	je	.L81
.L80:
	.loc 1 222 21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC39(%rip), %rdx
	movl	$26, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 222 20 discriminator 1
	testl	%eax, %eax
	jne	.L78
	.loc 1 223 23
	addl	$26, -16(%rbp)
	.loc 1 224 33
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 224 27
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 224 39
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC40(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$28, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 225 21
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 226 21
	jmp	.L30
.L78:
	.loc 1 231 17
	leaq	.LC41(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 231 16 discriminator 1
	testl	%eax, %eax
	jne	.L82
	.loc 1 232 23
	jmp	.L83
.L85:
	.loc 1 232 54 discriminator 3
	addl	$1, -16(%rbp)
.L83:
	.loc 1 232 32 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L84
	.loc 1 232 41 discriminator 2
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 232 32 discriminator 2
	cmpb	$32, %al
	je	.L85
.L84:
	.loc 1 233 21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC42(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	strncmp
	.loc 1 233 20 discriminator 1
	testl	%eax, %eax
	jne	.L82
	.loc 1 234 23
	addl	$2, -16(%rbp)
	.loc 1 235 33
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 235 27
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 235 39
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC43(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$30, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 236 21
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 237 21
	jmp	.L30
.L82:
	.loc 1 242 30
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	check_keyword
	movl	%eax, -52(%rbp)
	.loc 1 243 25
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 243 19
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 243 31
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %edx
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 244 13
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 245 13
	jmp	.L30
.L47:
.LBE5:
	.loc 1 249 31
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 249 14
	movb	%al, -90(%rbp)
	movb	$0, -89(%rbp)
	.loc 1 250 23
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 250 9
	cmpl	$125, %eax
	je	.L86
	cmpl	$125, %eax
	jg	.L87
	cmpl	$123, %eax
	je	.L88
	cmpl	$123, %eax
	jg	.L87
	cmpl	$62, %eax
	je	.L89
	cmpl	$62, %eax
	jg	.L87
	cmpl	$61, %eax
	je	.L90
	cmpl	$61, %eax
	jg	.L87
	cmpl	$60, %eax
	je	.L91
	cmpl	$60, %eax
	jg	.L87
	cmpl	$59, %eax
	je	.L92
	cmpl	$59, %eax
	jg	.L87
	cmpl	$47, %eax
	je	.L93
	cmpl	$47, %eax
	jg	.L87
	cmpl	$45, %eax
	je	.L94
	cmpl	$45, %eax
	jg	.L87
	cmpl	$43, %eax
	je	.L95
	cmpl	$43, %eax
	jg	.L87
	cmpl	$42, %eax
	je	.L96
	cmpl	$42, %eax
	jg	.L87
	cmpl	$40, %eax
	je	.L97
	cmpl	$41, %eax
	je	.L98
	jmp	.L87
.L95:
	.loc 1 251 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 251 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 251 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$33, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 251 81
	jmp	.L99
.L94:
	.loc 1 252 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 252 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 252 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$34, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 252 81
	jmp	.L99
.L96:
	.loc 1 253 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 253 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 253 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$35, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 253 81
	jmp	.L99
.L93:
	.loc 1 254 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 254 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 254 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$36, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 254 81
	jmp	.L99
.L90:
	.loc 1 255 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 255 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 255 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$37, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 255 81
	jmp	.L99
.L89:
	.loc 1 256 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 256 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 256 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$38, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 256 81
	jmp	.L99
.L91:
	.loc 1 257 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 257 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 257 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$39, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 257 81
	jmp	.L99
.L88:
	.loc 1 258 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 258 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 258 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 258 81
	jmp	.L99
.L86:
	.loc 1 259 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 259 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 259 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$41, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 259 81
	jmp	.L99
.L97:
	.loc 1 260 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 260 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 260 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$42, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 260 81
	jmp	.L99
.L98:
	.loc 1 261 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 261 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 261 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$43, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 261 81
	jmp	.L99
.L92:
	.loc 1 262 35
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 262 29
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 262 41
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %ecx
	leaq	-90(%rbp), %rdx
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$44, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 262 81
	jmp	.L99
.L87:
	.loc 1 264 85
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 264 17
	movsbl	%al, %ebx
	.loc 1 264 25
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL3:
	movq	%rax, %rcx
	.loc 1 264 17 discriminator 1
	movl	-12(%rbp), %edx
	leaq	.LC44(%rip), %rax
	movl	%edx, %r9d
	movl	%ebx, %r8d
	movq	%rax, %rdx
	call	fprintf
	.loc 1 265 17
	nop
.L99:
	.loc 1 267 10
	addl	$1, -16(%rbp)
	.loc 1 270 31
	movl	-4(%rbp), %eax
	subl	$1, %eax
	.loc 1 270 12
	cmpl	%eax, -8(%rbp)
	jl	.L30
	.loc 1 271 22
	sall	-4(%rbp)
	.loc 1 272 22
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 272 47
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 1 272 22
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	realloc
	movq	%rax, -24(%rbp)
.L30:
.LBE2:
	.loc 1 94 14
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L102
	.loc 1 277 17
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	.loc 1 277 11
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 277 23
	leaq	-128(%rbp), %rax
	movl	-12(%rbp), %edx
	leaq	.LC45(%rip), %rcx
	movl	%edx, %r9d
	movq	%rcx, %r8
	movl	$45, %edx
	movq	%rax, %rcx
	call	make_token
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 278 18
	movq	40(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 279 12
	movq	-24(%rbp), %rax
.L29:
	.loc 1 280 1
	addq	$168, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -152
	ret
	.cfi_endproc
.LFE110:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC46:
	.ascii "\12=== BRAINROT LEXER OUTPUT ===\0"
	.align 8
.LC47:
	.ascii "line %d | type: %3d | value: %s\12\0"
.LC48:
	.ascii "=== END OF TOKENS ===\12\0"
	.text
	.globl	print_tokens
	.def	print_tokens;	.scl	2;	.type	32;	.endef
	.seh_proc	print_tokens
print_tokens:
.LFB111:
	.loc 1 285 45
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 286 5
	leaq	.LC46(%rip), %rax
	movq	%rax, %rcx
	call	puts
.LBB6:
	.loc 1 287 14
	movl	$0, -4(%rbp)
	.loc 1 287 5
	jmp	.L104
.L105:
	.loc 1 291 22
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 288 9
	movq	8(%rax), %r9
	.loc 1 290 22
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 290 25
	movl	(%rax), %r8d
	.loc 1 289 22
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 288 9
	movl	16(%rax), %eax
	leaq	.LC47(%rip), %rcx
	movl	%eax, %edx
	call	printf
	.loc 1 287 33 discriminator 3
	addl	$1, -4(%rbp)
.L104:
	.loc 1 287 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L105
.LBE6:
	.loc 1 293 5
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 294 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.seh_endproc
	.globl	free_tokens
	.def	free_tokens;	.scl	2;	.type	32;	.endef
	.seh_proc	free_tokens
free_tokens:
.LFB112:
	.loc 1 299 44
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
.LBB7:
	.loc 1 300 14
	movl	$0, -4(%rbp)
	.loc 1 300 5
	jmp	.L107
.L108:
	.loc 1 301 20
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 301 23
	movq	8(%rax), %rax
	.loc 1 301 9
	movq	%rax, %rcx
	call	free
	.loc 1 300 33 discriminator 3
	addl	$1, -4(%rbp)
.L107:
	.loc 1 300 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L108
.LBE7:
	.loc 1 303 5
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 304 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.seh_endproc
.Letext0:
	.file 2 "D:/newmsysforc/ucrt64/include/corecrt.h"
	.file 3 "D:/newmsysforc/ucrt64/include/stdio.h"
	.file 4 "src/lexer.h"
	.file 5 "D:/newmsysforc/ucrt64/include/stdlib.h"
	.file 6 "D:/newmsysforc/ucrt64/include/string.h"
	.file 7 "D:/newmsysforc/ucrt64/include/ctype.h"
	.file 8 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x97d
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x15
	.ascii "GNU C11 15.2.0 -mtune=generic -march=nocona -g -std=c11\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x16
	.long	0x62
	.uleb128 0x8
	.ascii "size_t\0"
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.long	0x7e
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x17
	.ascii "_iobuf\0"
	.byte	0x8
	.byte	0x3
	.byte	0x21
	.byte	0xa
	.long	0x109
	.uleb128 0x9
	.ascii "_Placeholder\0"
	.byte	0x3
	.byte	0x23
	.byte	0xb
	.long	0x109
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.uleb128 0x8
	.ascii "FILE\0"
	.byte	0x3
	.byte	0x2f
	.byte	0x19
	.long	0xe2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x7
	.long	0xbf
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0xd2
	.byte	0x4
	.byte	0xf
	.byte	0xe
	.long	0x403
	.uleb128 0x1
	.ascii "TOKEN_NUMBER\0"
	.byte	0
	.uleb128 0x1
	.ascii "TOKEN_STRING\0"
	.byte	0x1
	.uleb128 0x1
	.ascii "TOKEN_IDENTIFIER\0"
	.byte	0x2
	.uleb128 0x1
	.ascii "TOKEN_GOONER\0"
	.byte	0x3
	.uleb128 0x1
	.ascii "TOKEN_BADDIE\0"
	.byte	0x4
	.uleb128 0x1
	.ascii "TOKEN_SLIME\0"
	.byte	0x5
	.uleb128 0x1
	.ascii "TOKEN_GOON\0"
	.byte	0x6
	.uleb128 0x1
	.ascii "TOKEN_BUM\0"
	.byte	0x7
	.uleb128 0x1
	.ascii "TOKEN_JIT\0"
	.byte	0x8
	.uleb128 0x1
	.ascii "TOKEN_W\0"
	.byte	0x9
	.uleb128 0x1
	.ascii "TOKEN_L\0"
	.byte	0xa
	.uleb128 0x1
	.ascii "TOKEN_COOK\0"
	.byte	0xb
	.uleb128 0x1
	.ascii "TOKEN_LIT\0"
	.byte	0xc
	.uleb128 0x1
	.ascii "TOKEN_COOKED\0"
	.byte	0xd
	.uleb128 0x1
	.ascii "TOKEN_SLIDE\0"
	.byte	0xe
	.uleb128 0x1
	.ascii "TOKEN_SYABU\0"
	.byte	0xf
	.uleb128 0x1
	.ascii "TOKEN_GUMIT\0"
	.byte	0x10
	.uleb128 0x1
	.ascii "TOKEN_YN\0"
	.byte	0x11
	.uleb128 0x1
	.ascii "TOKEN_FYNSHYT\0"
	.byte	0x12
	.uleb128 0x1
	.ascii "TOKEN_OPPS\0"
	.byte	0x13
	.uleb128 0x1
	.ascii "TOKEN_RISKY_SHOOT\0"
	.byte	0x14
	.uleb128 0x1
	.ascii "TOKEN_SAY_LESS\0"
	.byte	0x15
	.uleb128 0x1
	.ascii "TOKEN_SLIDE_ON_EM\0"
	.byte	0x16
	.uleb128 0x1
	.ascii "TOKEN_NO_CAP\0"
	.byte	0x17
	.uleb128 0x1
	.ascii "TOKEN_CAP\0"
	.byte	0x18
	.uleb128 0x1
	.ascii "TOKEN_GYATT\0"
	.byte	0x19
	.uleb128 0x1
	.ascii "TOKEN_BUGGING\0"
	.byte	0x1a
	.uleb128 0x1
	.ascii "TOKEN_FAP\0"
	.byte	0x1b
	.uleb128 0x1
	.ascii "TOKEN_DOUBLE_IT\0"
	.byte	0x1c
	.uleb128 0x1
	.ascii "TOKEN_BENJIS\0"
	.byte	0x1d
	.uleb128 0x1
	.ascii "TOKEN_GWAK_3K\0"
	.byte	0x1e
	.uleb128 0x1
	.ascii "TOKEN_DIABOLICAL\0"
	.byte	0x1f
	.uleb128 0x1
	.ascii "TOKEN_PUT_THE_FIRES\0"
	.byte	0x20
	.uleb128 0x1
	.ascii "TOKEN_PLUS\0"
	.byte	0x21
	.uleb128 0x1
	.ascii "TOKEN_MINUS\0"
	.byte	0x22
	.uleb128 0x1
	.ascii "TOKEN_STAR\0"
	.byte	0x23
	.uleb128 0x1
	.ascii "TOKEN_SLASH\0"
	.byte	0x24
	.uleb128 0x1
	.ascii "TOKEN_EQUALS\0"
	.byte	0x25
	.uleb128 0x1
	.ascii "TOKEN_GREATER\0"
	.byte	0x26
	.uleb128 0x1
	.ascii "TOKEN_LESS\0"
	.byte	0x27
	.uleb128 0x1
	.ascii "TOKEN_LBRACE\0"
	.byte	0x28
	.uleb128 0x1
	.ascii "TOKEN_RBRACE\0"
	.byte	0x29
	.uleb128 0x1
	.ascii "TOKEN_LPAREN\0"
	.byte	0x2a
	.uleb128 0x1
	.ascii "TOKEN_RPAREN\0"
	.byte	0x2b
	.uleb128 0x1
	.ascii "TOKEN_SEMICOLON\0"
	.byte	0x2c
	.uleb128 0x1
	.ascii "TOKEN_EOF\0"
	.byte	0x2d
	.byte	0
	.uleb128 0x8
	.ascii "TokenType\0"
	.byte	0x4
	.byte	0x5d
	.byte	0x3
	.long	0x150
	.uleb128 0x1a
	.byte	0x18
	.byte	0x4
	.byte	0x64
	.byte	0x9
	.long	0x44a
	.uleb128 0x9
	.ascii "type\0"
	.byte	0x4
	.byte	0x65
	.byte	0xf
	.long	0x403
	.byte	0
	.uleb128 0x9
	.ascii "value\0"
	.byte	0x4
	.byte	0x66
	.byte	0xf
	.long	0x44a
	.byte	0x8
	.uleb128 0x9
	.ascii "line\0"
	.byte	0x4
	.byte	0x67
	.byte	0xf
	.long	0xbf
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x62
	.uleb128 0x8
	.ascii "Token\0"
	.byte	0x4
	.byte	0x68
	.byte	0x3
	.long	0x415
	.uleb128 0xa
	.ascii "printf\0"
	.byte	0x3
	.word	0x1c2
	.byte	0xf
	.long	0xbf
	.long	0x478
	.uleb128 0x2
	.long	0x478
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.long	0x6a
	.uleb128 0xa
	.ascii "realloc\0"
	.byte	0x5
	.word	0x1c9
	.byte	0x11
	.long	0x109
	.long	0x49d
	.uleb128 0x2
	.long	0x109
	.uleb128 0x2
	.long	0x7e
	.byte	0
	.uleb128 0xa
	.ascii "fprintf\0"
	.byte	0x3
	.word	0x1c0
	.byte	0xf
	.long	0xbf
	.long	0x4be
	.uleb128 0x2
	.long	0x4be
	.uleb128 0x2
	.long	0x478
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.long	0x10b
	.uleb128 0x5
	.ascii "strncmp\0"
	.byte	0x6
	.byte	0x5d
	.byte	0xf
	.long	0xbf
	.long	0x4e7
	.uleb128 0x2
	.long	0x478
	.uleb128 0x2
	.long	0x478
	.uleb128 0x2
	.long	0x7e
	.byte	0
	.uleb128 0x5
	.ascii "isalnum\0"
	.byte	0x7
	.byte	0x2b
	.byte	0x17
	.long	0xbf
	.long	0x501
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0x5
	.ascii "isalpha\0"
	.byte	0x7
	.byte	0x24
	.byte	0x17
	.long	0xbf
	.long	0x51b
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0x1b
	.ascii "free\0"
	.byte	0x5
	.word	0x1c7
	.byte	0x10
	.long	0x52f
	.uleb128 0x2
	.long	0x109
	.byte	0
	.uleb128 0x5
	.ascii "strncpy\0"
	.byte	0x6
	.byte	0x60
	.byte	0x9
	.long	0x44a
	.long	0x553
	.uleb128 0x2
	.long	0x44a
	.uleb128 0x2
	.long	0x478
	.uleb128 0x2
	.long	0x7e
	.byte	0
	.uleb128 0x5
	.ascii "__acrt_iob_func\0"
	.byte	0x3
	.byte	0x65
	.byte	0x17
	.long	0x4be
	.long	0x575
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0xa
	.ascii "malloc\0"
	.byte	0x5
	.word	0x1c8
	.byte	0x11
	.long	0x109
	.long	0x58f
	.uleb128 0x2
	.long	0x7e
	.byte	0
	.uleb128 0x5
	.ascii "strlen\0"
	.byte	0x6
	.byte	0x40
	.byte	0x12
	.long	0x6f
	.long	0x5a8
	.uleb128 0x2
	.long	0x478
	.byte	0
	.uleb128 0x5
	.ascii "strcmp\0"
	.byte	0x6
	.byte	0x3f
	.byte	0xf
	.long	0xbf
	.long	0x5c6
	.uleb128 0x2
	.long	0x478
	.uleb128 0x2
	.long	0x478
	.byte	0
	.uleb128 0x5
	.ascii "strdup\0"
	.byte	0x6
	.byte	0x77
	.byte	0x11
	.long	0x44a
	.long	0x5df
	.uleb128 0x2
	.long	0x478
	.byte	0
	.uleb128 0xe
	.ascii "free_tokens\0"
	.word	0x12b
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x643
	.uleb128 0xf
	.secrel32	.LASF2
	.word	0x12b
	.byte	0x19
	.long	0x643
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.ascii "count\0"
	.word	0x12b
	.byte	0x25
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x12
	.ascii "i\0"
	.word	0x12c
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x44f
	.uleb128 0xe
	.ascii "print_tokens\0"
	.word	0x11d
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ad
	.uleb128 0xf
	.secrel32	.LASF2
	.word	0x11d
	.byte	0x1a
	.long	0x643
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.ascii "count\0"
	.word	0x11d
	.byte	0x26
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x12
	.ascii "i\0"
	.word	0x11f
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii "tokenize\0"
	.byte	0x1
	.byte	0x4f
	.byte	0x8
	.long	0x643
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x89c
	.uleb128 0x6
	.ascii "source\0"
	.byte	0x4f
	.byte	0x1d
	.long	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "token_count\0"
	.byte	0x4f
	.byte	0x2a
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.ascii "capacity\0"
	.byte	0x51
	.byte	0x9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.ascii "count\0"
	.byte	0x52
	.byte	0x9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.ascii "line\0"
	.byte	0x53
	.byte	0x9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.ascii "i\0"
	.byte	0x54
	.byte	0x9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.ascii "len\0"
	.byte	0x55
	.byte	0x9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x58
	.byte	0xc
	.long	0x643
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x88e
	.uleb128 0x3
	.ascii "sym\0"
	.byte	0xf9
	.byte	0xe
	.long	0x89c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0xb
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x7c3
	.uleb128 0x3
	.ascii "start\0"
	.byte	0x6f
	.byte	0x9
	.long	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3
	.ascii "num_len\0"
	.byte	0x76
	.byte	0x9
	.long	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.ascii "num\0"
	.byte	0x77
	.byte	0xb
	.long	0x44a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0xb
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x80c
	.uleb128 0x3
	.ascii "start\0"
	.byte	0x82
	.byte	0x11
	.long	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.ascii "str_len\0"
	.byte	0x84
	.byte	0x11
	.long	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.ascii "str\0"
	.byte	0x85
	.byte	0x13
	.long	0x44a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0xb
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x873
	.uleb128 0x3
	.ascii "start\0"
	.byte	0x90
	.byte	0x11
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.ascii "word_len\0"
	.byte	0x92
	.byte	0x11
	.long	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.ascii "word\0"
	.byte	0x93
	.byte	0x13
	.long	0x44a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.ascii "type\0"
	.byte	0xf2
	.byte	0x17
	.long	0x403
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.quad	.LVL2
	.long	0x94a
	.byte	0
	.uleb128 0xc
	.quad	.LVL1
	.long	0x965
	.uleb128 0xc
	.quad	.LVL3
	.long	0x553
	.byte	0
	.uleb128 0xc
	.quad	.LVL0
	.long	0x553
	.byte	0
	.uleb128 0x1e
	.long	0x62
	.long	0x8ac
	.uleb128 0x1f
	.long	0x7e
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.ascii "check_keyword\0"
	.byte	0x1e
	.byte	0x12
	.long	0x403
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e7
	.uleb128 0x6
	.ascii "word\0"
	.byte	0x1e
	.byte	0x2c
	.long	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.ascii "make_token\0"
	.byte	0x11
	.byte	0xe
	.long	0x44f
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x94a
	.uleb128 0x6
	.ascii "type\0"
	.byte	0x11
	.byte	0x23
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.ascii "value\0"
	.byte	0x11
	.byte	0x35
	.long	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.ascii "line\0"
	.byte	0x11
	.byte	0x40
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3
	.ascii "t\0"
	.byte	0x12
	.byte	0xb
	.long	0x44f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x14
	.ascii "isalnum\0"
	.ascii "__builtin_isalnum\0"
	.uleb128 0x14
	.ascii "isalpha\0"
	.ascii "__builtin_isalpha\0"
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF2:
	.ascii "tokens\0"
	.section	.debug_line_str,"dr"
.LASF0:
	.ascii "src/lexer.c\0"
.LASF1:
	.ascii "D:\\brainrotgenz compiler\0"
	.ident	"GCC: (Rev11, Built by MSYS2 project) 15.2.0"
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	strncpy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
