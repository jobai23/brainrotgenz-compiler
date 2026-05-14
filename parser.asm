	.file	"parser.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "D:/brainrotgenz compiler" "src/parser.c"
.lcomm tokens,8,8
.lcomm token_count,4,4
.lcomm current,4,4
	.def	peek;	.scl	3;	.type	32;	.endef
	.seh_proc	peek
peek:
.LFB108:
	.file 1 "src/parser.c"
	.loc 1 27 26
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	.loc 1 28 12
	movq	tokens(%rip), %rcx
	.loc 1 28 19
	movl	current(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 28 12
	addq	%rcx, %rax
	.loc 1 29 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.seh_endproc
	.def	advance;	.scl	3;	.type	32;	.endef
	.seh_proc	advance
advance:
.LFB109:
	.loc 1 32 29
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	.loc 1 33 16
	movq	tokens(%rip), %rcx
	.loc 1 33 23
	movl	current(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 33 12
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 34 31
	movl	token_count(%rip), %eax
	leal	-1(%rax), %edx
	.loc 1 34 17
	movl	current(%rip), %eax
	.loc 1 34 8
	cmpl	%eax, %edx
	jle	.L4
	.loc 1 34 43 discriminator 1
	movl	current(%rip), %eax
	addl	$1, %eax
	movl	%eax, current(%rip)
.L4:
	.loc 1 35 12
	movq	-8(%rbp), %rax
	.loc 1 36 1
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.seh_endproc
	.def	check;	.scl	3;	.type	32;	.endef
	.seh_proc	check
check:
.LFB110:
	.loc 1 39 34
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
	movl	%ecx, 16(%rbp)
	.loc 1 40 12
	call	peek
	.loc 1 40 18 discriminator 1
	movl	(%rax), %eax
	.loc 1 40 25 discriminator 1
	cmpl	%eax, 16(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 1 41 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.seh_endproc
	.def	match;	.scl	3;	.type	32;	.endef
	.seh_proc	match
match:
.LFB111:
	.loc 1 44 58
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
	movl	%ecx, 16(%rbp)
	.loc 1 45 9
	movl	16(%rbp), %eax
	movl	%eax, %ecx
	call	check
	.loc 1 45 8 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 46 9
	call	advance
	.loc 1 47 16
	movl	$1, %eax
	jmp	.L10
.L9:
	.loc 1 49 12
	movl	$0, %eax
.L10:
	.loc 1 50 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "parse error on line %d: expected %s but got '%s'\12\0"
	.text
	.def	expect;	.scl	3;	.type	32;	.endef
	.seh_proc	expect
expect:
.LFB112:
	.loc 1 54 55
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp
	.seh_stackalloc	48
	.cfi_def_cfa_offset 80
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	.loc 1 55 9
	movl	32(%rbp), %eax
	movl	%eax, %ecx
	call	check
	.loc 1 55 8 discriminator 1
	testl	%eax, %eax
	je	.L12
	.loc 1 55 29 discriminator 2
	call	advance
	.loc 1 55 29 is_stmt 0
	jmp	.L14
.L12:
	.loc 1 57 32 is_stmt 1
	call	peek
	.loc 1 56 5
	movq	8(%rax), %rbx
	.loc 1 57 13
	call	peek
	.loc 1 56 5
	movl	16(%rax), %esi
	.loc 1 56 13
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL0:
	movq	%rax, %rcx
	.loc 1 56 5 discriminator 1
	movq	40(%rbp), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rbx, 32(%rsp)
	movq	%rdx, %r9
	movl	%esi, %r8d
	movq	%rax, %rdx
	call	fprintf
	.loc 1 58 5
	movl	$1, %ecx
	call	exit
.L14:
	.loc 1 59 1
	addq	$48, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE112:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "error: out of memory\12\0"
	.text
	.def	make_node;	.scl	3;	.type	32;	.endef
	.seh_proc	make_node
make_node:
.LFB113:
	.loc 1 65 42
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
	movl	%ecx, 16(%rbp)
	.loc 1 66 21
	movl	$104, %edx
	movl	$1, %ecx
	call	calloc
	movq	%rax, -8(%rbp)
	.loc 1 67 8
	cmpq	$0, -8(%rbp)
	jne	.L16
	.loc 1 68 17
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL1:
	movq	%rax, %rdx
	.loc 1 68 9 discriminator 1
	leaq	.LC1(%rip), %rax
	movq	%rdx, %r9
	movl	$21, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 1 69 9
	movl	$1, %ecx
	call	exit
.L16:
	.loc 1 71 16
	movq	-8(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 72 18
	call	peek
	.loc 1 72 24 discriminator 1
	movl	16(%rax), %edx
	.loc 1 72 16 discriminator 1
	movq	-8(%rbp), %rax
	movl	%edx, 96(%rax)
	.loc 1 73 12
	movq	-8(%rbp), %rax
	.loc 1 74 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.seh_endproc
	.def	add_child;	.scl	3;	.type	32;	.endef
	.seh_proc	add_child
add_child:
.LFB114:
	.loc 1 80 56
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
	movq	%rdx, 24(%rbp)
	.loc 1 82 27
	movq	16(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 82 40
	addl	$1, %eax
	cltq
	.loc 1 82 45
	leaq	0(,%rax,8), %rdx
	.loc 1 81 34
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 81 20
	movq	%rax, %rcx
	call	realloc
	.loc 1 81 18 discriminator 1
	movq	16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	.loc 1 83 11
	movq	16(%rbp), %rax
	movq	48(%rax), %r8
	.loc 1 83 24
	movq	16(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 83 36
	leal	1(%rax), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, 56(%rdx)
	cltq
	.loc 1 83 17
	salq	$3, %rax
	leaq	(%r8,%rax), %rdx
	.loc 1 83 40
	movq	24(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 84 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "1\0"
.LC3:
	.ascii "0\0"
	.align 8
.LC4:
	.ascii "parse error on line %d: unexpected token '%s'\12\0"
	.text
	.def	parse_primary;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_primary
parse_primary:
.LFB115:
	.loc 1 98 37
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.seh_stackalloc	80
	.cfi_def_cfa_offset 112
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.cfi_def_cfa 6, 32
	.seh_endprologue
	.loc 1 101 9
	movl	$0, %ecx
	call	check
	.loc 1 101 8 discriminator 1
	testl	%eax, %eax
	je	.L20
.LBB2:
	.loc 1 102 25
	movl	$14, %ecx
	call	make_node
	movq	%rax, -40(%rbp)
	.loc 1 103 30
	call	advance
	.loc 1 103 39 discriminator 1
	movq	8(%rax), %rax
	.loc 1 103 23 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 103 21 discriminator 2
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 104 16
	movq	-40(%rbp), %rax
	jmp	.L21
.L20:
.LBE2:
	.loc 1 108 9
	movl	$1, %ecx
	call	check
	.loc 1 108 8 discriminator 1
	testl	%eax, %eax
	je	.L22
.LBB3:
	.loc 1 109 25
	movl	$14, %ecx
	call	make_node
	movq	%rax, -32(%rbp)
	.loc 1 110 30
	call	advance
	.loc 1 110 39 discriminator 1
	movq	8(%rax), %rax
	.loc 1 110 23 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 110 21 discriminator 2
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 111 16
	movq	-32(%rbp), %rax
	jmp	.L21
.L22:
.LBE3:
	.loc 1 115 9
	movl	$9, %ecx
	call	check
	.loc 1 115 8 discriminator 1
	testl	%eax, %eax
	je	.L23
.LBB4:
	.loc 1 116 25
	movl	$14, %ecx
	call	make_node
	movq	%rax, -24(%rbp)
	.loc 1 117 23
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	strdup
	.loc 1 117 21 discriminator 1
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 118 9
	call	advance
	.loc 1 119 16
	movq	-24(%rbp), %rax
	jmp	.L21
.L23:
.LBE4:
	.loc 1 123 9
	movl	$10, %ecx
	call	check
	.loc 1 123 8 discriminator 1
	testl	%eax, %eax
	je	.L24
.LBB5:
	.loc 1 124 25
	movl	$14, %ecx
	call	make_node
	movq	%rax, -16(%rbp)
	.loc 1 125 23
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	strdup
	.loc 1 125 21 discriminator 1
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 126 9
	call	advance
	.loc 1 127 16
	movq	-16(%rbp), %rax
	jmp	.L21
.L24:
.LBE5:
	.loc 1 131 9
	movl	$2, %ecx
	call	check
	.loc 1 131 8 discriminator 1
	testl	%eax, %eax
	je	.L25
.LBB6:
	.loc 1 132 25
	movl	$15, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 133 30
	call	advance
	.loc 1 133 39 discriminator 1
	movq	8(%rax), %rax
	.loc 1 133 23 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 133 21 discriminator 2
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 134 16
	movq	-8(%rbp), %rax
	jmp	.L21
.L25:
.LBE6:
	.loc 1 138 27
	call	peek
	.loc 1 137 5
	movq	8(%rax), %rsi
	.loc 1 138 13
	call	peek
	.loc 1 137 5
	movl	16(%rax), %ebx
	.loc 1 137 13
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL2:
	movq	%rax, %rcx
	.loc 1 137 5 discriminator 1
	leaq	.LC4(%rip), %rax
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	call	fprintf
	.loc 1 139 5
	movl	$1, %ecx
	call	exit
.L21:
	.loc 1 140 1
	addq	$80, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE115:
	.seh_endproc
	.def	parse_expression;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_expression
parse_expression:
.LFB116:
	.loc 1 148 40
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
	.loc 1 149 21
	call	parse_primary
	movq	%rax, -8(%rbp)
	.loc 1 152 11
	jmp	.L27
.L28:
.LBB7:
	.loc 1 160 26
	movl	$13, %ecx
	call	make_node
	movq	%rax, -16(%rbp)
	.loc 1 161 31
	call	advance
	.loc 1 161 40 discriminator 1
	movq	8(%rax), %rax
	.loc 1 161 24 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 161 22 discriminator 2
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	.loc 1 162 22
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 1 163 24
	call	parse_primary
	.loc 1 163 22 discriminator 1
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 164 14
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L27:
.LBE7:
	.loc 1 153 9
	movl	$25, %ecx
	call	check
	.loc 1 158 30
	testl	%eax, %eax
	jne	.L28
	.loc 1 153 33
	movl	$26, %ecx
	call	check
	.loc 1 153 30 discriminator 2
	testl	%eax, %eax
	jne	.L28
	.loc 1 154 9
	movl	$23, %ecx
	call	check
	.loc 1 153 54 discriminator 3
	testl	%eax, %eax
	jne	.L28
	.loc 1 154 33
	movl	$24, %ecx
	call	check
	.loc 1 154 30 discriminator 2
	testl	%eax, %eax
	jne	.L28
	.loc 1 155 9
	movl	$9, %ecx
	call	check
	.loc 1 154 54 discriminator 3
	testl	%eax, %eax
	jne	.L28
	.loc 1 155 33
	movl	$10, %ecx
	call	check
	.loc 1 155 30 discriminator 2
	testl	%eax, %eax
	jne	.L28
	.loc 1 156 9
	movl	$38, %ecx
	call	check
	.loc 1 155 54 discriminator 3
	testl	%eax, %eax
	jne	.L28
	.loc 1 156 33
	movl	$39, %ecx
	call	check
	.loc 1 156 30 discriminator 2
	testl	%eax, %eax
	jne	.L28
	.loc 1 157 9
	movl	$33, %ecx
	call	check
	.loc 1 156 54 discriminator 3
	testl	%eax, %eax
	jne	.L28
	.loc 1 157 33
	movl	$34, %ecx
	call	check
	.loc 1 157 30 discriminator 2
	testl	%eax, %eax
	jne	.L28
	.loc 1 158 9
	movl	$35, %ecx
	call	check
	.loc 1 157 54 discriminator 3
	testl	%eax, %eax
	jne	.L28
	.loc 1 158 33
	movl	$36, %ecx
	call	check
	.loc 1 158 30 discriminator 2
	testl	%eax, %eax
	jne	.L28
	.loc 1 167 12
	movq	-8(%rbp), %rax
	.loc 1 168 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "{\0"
.LC6:
	.ascii "}\0"
	.text
	.def	parse_block;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_block
parse_block:
.LFB117:
	.loc 1 173 35
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
	.loc 1 174 22
	movl	$6, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 175 5
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	movl	$40, %ecx
	call	expect
	.loc 1 177 11
	jmp	.L32
.L34:
.LBB8:
	.loc 1 178 25
	call	parse_statement
	movq	%rax, -16(%rbp)
	.loc 1 179 12
	cmpq	$0, -16(%rbp)
	je	.L32
	.loc 1 179 19 discriminator 1
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	add_child
.L32:
.LBE8:
	.loc 1 177 13
	movl	$41, %ecx
	call	check
	.loc 1 177 33 discriminator 1
	testl	%eax, %eax
	jne	.L33
	.loc 1 177 37 discriminator 2
	movl	$45, %ecx
	call	check
	.loc 1 177 33 discriminator 3
	testl	%eax, %eax
	je	.L34
.L33:
	.loc 1 182 5
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdx
	movl	$41, %ecx
	call	expect
	.loc 1 183 12
	movq	-8(%rbp), %rax
	.loc 1 184 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "jit\0"
.LC8:
	.ascii "identifier\0"
.LC9:
	.ascii "=\0"
.LC10:
	.ascii ";\0"
	.text
	.def	parse_var_decl;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_var_decl
parse_var_decl:
.LFB118:
	.loc 1 191 38
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
	.loc 1 192 21
	movl	$1, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 195 30
	call	advance
	.loc 1 195 39 discriminator 1
	movq	8(%rax), %rax
	.loc 1 195 23 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 195 21 discriminator 2
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	.loc 1 198 5
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	movl	$8, %ecx
	call	expect
	.loc 1 201 26
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expect
	.loc 1 201 64 discriminator 1
	movq	8(%rax), %rax
	.loc 1 201 19 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 201 17 discriminator 2
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 204 5
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	movl	$37, %ecx
	call	expect
	.loc 1 205 19
	call	parse_expression
	.loc 1 205 17 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 207 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %ecx
	call	expect
	.loc 1 208 12
	movq	-8(%rbp), %rax
	.loc 1 209 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.seh_endproc
	.def	parse_print;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_print
parse_print:
.LFB119:
	.loc 1 216 35
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
	.loc 1 217 21
	movl	$2, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 218 5
	call	advance
	.loc 1 219 19
	call	parse_expression
	.loc 1 219 17 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 220 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %ecx
	call	expect
	.loc 1 221 12
	movq	-8(%rbp), %rax
	.loc 1 222 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.seh_endproc
	.def	parse_input;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_input
parse_input:
.LFB120:
	.loc 1 228 35
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
	.loc 1 229 21
	movl	$3, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 230 5
	call	advance
	.loc 1 231 26
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expect
	.loc 1 231 64 discriminator 1
	movq	8(%rax), %rax
	.loc 1 231 19 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 231 17 discriminator 2
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 232 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %ecx
	call	expect
	.loc 1 233 12
	movq	-8(%rbp), %rax
	.loc 1 234 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.seh_endproc
	.def	parse_return;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_return
parse_return:
.LFB121:
	.loc 1 240 36
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
	.loc 1 241 21
	movl	$4, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 242 5
	call	advance
	.loc 1 243 19
	call	parse_expression
	.loc 1 243 17 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 244 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %ecx
	call	expect
	.loc 1 245 12
	movq	-8(%rbp), %rax
	.loc 1 246 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.seh_endproc
	.def	parse_increment;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_increment
parse_increment:
.LFB122:
	.loc 1 252 39
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
	.loc 1 253 21
	movl	$5, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 254 5
	call	advance
	.loc 1 255 26
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expect
	.loc 1 255 64 discriminator 1
	movq	8(%rax), %rax
	.loc 1 255 19 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 255 17 discriminator 2
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 256 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %ecx
	call	expect
	.loc 1 257 12
	movq	-8(%rbp), %rax
	.loc 1 258 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.seh_endproc
	.def	parse_if;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_if
parse_if:
.LFB123:
	.loc 1 266 32
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
	.loc 1 267 21
	movl	$7, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 268 5
	call	advance
	.loc 1 270 23
	call	parse_expression
	.loc 1 270 21 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	.loc 1 271 23
	call	parse_block
	.loc 1 271 21 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 274 9
	movl	$18, %ecx
	call	check
	.loc 1 274 8 discriminator 1
	testl	%eax, %eax
	je	.L47
.LBB9:
	.loc 1 275 25
	movl	$8, %ecx
	call	make_node
	movq	%rax, -24(%rbp)
	.loc 1 276 9
	call	advance
	.loc 1 277 29
	call	parse_expression
	.loc 1 277 27 discriminator 1
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	.loc 1 278 29
	call	parse_block
	.loc 1 278 27 discriminator 1
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 279 27
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 88(%rax)
	.loc 1 282 13
	movl	$19, %ecx
	call	check
	.loc 1 282 12 discriminator 1
	testl	%eax, %eax
	je	.L48
.LBB10:
	.loc 1 283 28
	movl	$9, %ecx
	call	make_node
	movq	%rax, -32(%rbp)
	.loc 1 284 13
	call	advance
	.loc 1 285 34
	call	parse_block
	.loc 1 285 32 discriminator 1
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 286 32
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 88(%rax)
	jmp	.L48
.L47:
.LBE10:
.LBE9:
	.loc 1 288 16
	movl	$19, %ecx
	call	check
	.loc 1 288 15 discriminator 1
	testl	%eax, %eax
	je	.L48
.LBB11:
	.loc 1 289 24
	movl	$9, %ecx
	call	make_node
	movq	%rax, -16(%rbp)
	.loc 1 290 9
	call	advance
	.loc 1 291 29
	call	parse_block
	.loc 1 291 27 discriminator 1
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 292 27
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
.L48:
.LBE11:
	.loc 1 295 12
	movq	-8(%rbp), %rax
	.loc 1 296 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.seh_endproc
	.def	parse_while;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_while
parse_while:
.LFB124:
	.loc 1 302 35
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
	.loc 1 303 21
	movl	$10, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 304 5
	call	advance
	.loc 1 306 23
	call	parse_expression
	.loc 1 306 21 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	.loc 1 307 23
	call	parse_block
	.loc 1 307 21 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 308 12
	movq	-8(%rbp), %rax
	.loc 1 309 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "(\0"
.LC12:
	.ascii ")\0"
	.text
	.def	parse_for;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_for
parse_for:
.LFB125:
	.loc 1 315 33
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
	.loc 1 316 21
	movl	$11, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 317 5
	call	advance
	.loc 1 319 5
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	movl	$42, %ecx
	call	expect
	.loc 1 322 9
	movl	$3, %ecx
	call	check
	.loc 1 322 8 discriminator 1
	testl	%eax, %eax
	jne	.L53
	.loc 1 322 32 discriminator 2
	movl	$5, %ecx
	call	check
	.loc 1 322 29 discriminator 3
	testl	%eax, %eax
	jne	.L53
	.loc 1 323 9
	movl	$4, %ecx
	call	check
	.loc 1 322 51 discriminator 4
	testl	%eax, %eax
	jne	.L53
	.loc 1 323 32
	movl	$6, %ecx
	call	check
	.loc 1 323 29 discriminator 2
	testl	%eax, %eax
	je	.L54
.L53:
	.loc 1 324 22
	call	parse_var_decl
	.loc 1 324 20 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
.L54:
	.loc 1 328 23
	call	parse_expression
	.loc 1 328 21 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	.loc 1 329 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %ecx
	call	expect
	.loc 1 332 9
	movl	$27, %ecx
	call	check
	.loc 1 332 8 discriminator 1
	testl	%eax, %eax
	je	.L55
.LBB12:
	.loc 1 333 25
	movl	$5, %ecx
	call	make_node
	movq	%rax, -16(%rbp)
	.loc 1 334 9
	call	advance
	.loc 1 335 30
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expect
	.loc 1 335 68 discriminator 1
	movq	8(%rax), %rax
	.loc 1 335 23 discriminator 1
	movq	%rax, %rcx
	call	strdup
	.loc 1 335 21 discriminator 2
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 336 21
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L55:
.LBE12:
	.loc 1 339 5
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movl	$43, %ecx
	call	expect
	.loc 1 340 19
	call	parse_block
	.loc 1 340 17 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 341 12
	movq	-8(%rbp), %rax
	.loc 1 342 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "risky shoot\0"
	.text
	.def	parse_dowhile;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_dowhile
parse_dowhile:
.LFB126:
	.loc 1 348 37
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
	.loc 1 349 21
	movl	$12, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 350 5
	call	advance
	.loc 1 352 19
	call	parse_block
	.loc 1 352 17 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 354 5
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movl	$20, %ecx
	call	expect
	.loc 1 355 23
	call	parse_expression
	.loc 1 355 21 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	.loc 1 356 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %ecx
	call	expect
	.loc 1 357 12
	movq	-8(%rbp), %rax
	.loc 1 358 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "warning: skipping unexpected token '%s' on line %d\12\0"
	.text
	.def	parse_statement;	.scl	3;	.type	32;	.endef
	.seh_proc	parse_statement
parse_statement:
.LFB127:
	.loc 1 365 39
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 64
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.cfi_def_cfa 6, 32
	.seh_endprologue
	.loc 1 368 9
	movl	$3, %ecx
	call	check
	.loc 1 368 8 discriminator 1
	testl	%eax, %eax
	jne	.L60
	.loc 1 368 32 discriminator 2
	movl	$4, %ecx
	call	check
	.loc 1 368 29 discriminator 3
	testl	%eax, %eax
	jne	.L60
	.loc 1 369 9
	movl	$5, %ecx
	call	check
	.loc 1 368 52 discriminator 4
	testl	%eax, %eax
	jne	.L60
	.loc 1 369 32
	movl	$6, %ecx
	call	check
	.loc 1 369 29 discriminator 2
	testl	%eax, %eax
	jne	.L60
	.loc 1 370 9
	movl	$7, %ecx
	call	check
	.loc 1 369 52 discriminator 3
	testl	%eax, %eax
	je	.L61
.L60:
	.loc 1 371 16
	call	parse_var_decl
	jmp	.L62
.L61:
	.loc 1 375 9
	movl	$15, %ecx
	call	check
	.loc 1 375 8 discriminator 1
	testl	%eax, %eax
	je	.L63
	.loc 1 375 42 discriminator 2
	call	parse_print
	.loc 1 375 42 is_stmt 0
	jmp	.L62
.L63:
	.loc 1 378 9 is_stmt 1
	movl	$16, %ecx
	call	check
	.loc 1 378 8 discriminator 1
	testl	%eax, %eax
	je	.L64
	.loc 1 378 42 discriminator 2
	call	parse_input
	.loc 1 378 42 is_stmt 0
	jmp	.L62
.L64:
	.loc 1 381 9 is_stmt 1
	movl	$13, %ecx
	call	check
	.loc 1 381 8 discriminator 1
	testl	%eax, %eax
	je	.L65
	.loc 1 381 42 discriminator 2
	call	parse_return
	.loc 1 381 42 is_stmt 0
	jmp	.L62
.L65:
	.loc 1 384 9 is_stmt 1
	movl	$27, %ecx
	call	check
	.loc 1 384 8 discriminator 1
	testl	%eax, %eax
	je	.L66
	.loc 1 384 42 discriminator 2
	call	parse_increment
	.loc 1 384 42 is_stmt 0
	jmp	.L62
.L66:
	.loc 1 387 9 is_stmt 1
	movl	$17, %ecx
	call	check
	.loc 1 387 8 discriminator 1
	testl	%eax, %eax
	je	.L67
	.loc 1 387 42 discriminator 2
	call	parse_if
	.loc 1 387 42 is_stmt 0
	jmp	.L62
.L67:
	.loc 1 390 9 is_stmt 1
	movl	$20, %ecx
	call	check
	.loc 1 390 8 discriminator 1
	testl	%eax, %eax
	je	.L68
	.loc 1 390 42 discriminator 2
	call	parse_while
	.loc 1 390 42 is_stmt 0
	jmp	.L62
.L68:
	.loc 1 393 9 is_stmt 1
	movl	$22, %ecx
	call	check
	.loc 1 393 8 discriminator 1
	testl	%eax, %eax
	je	.L69
	.loc 1 393 42 discriminator 2
	call	parse_for
	.loc 1 393 42 is_stmt 0
	jmp	.L62
.L69:
	.loc 1 396 9 is_stmt 1
	movl	$21, %ecx
	call	check
	.loc 1 396 8 discriminator 1
	testl	%eax, %eax
	je	.L70
	.loc 1 396 42 discriminator 2
	call	parse_dowhile
	.loc 1 396 42 is_stmt 0
	jmp	.L62
.L70:
	.loc 1 400 28 is_stmt 1
	call	peek
	.loc 1 399 5
	movl	16(%rax), %esi
	.loc 1 400 13
	call	peek
	.loc 1 399 5
	movq	8(%rax), %rbx
	.loc 1 399 13
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL3:
	movq	%rax, %rcx
	.loc 1 399 5 discriminator 1
	leaq	.LC14(%rip), %rax
	movl	%esi, %r9d
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	fprintf
	.loc 1 401 5
	call	advance
	.loc 1 402 12
	movl	$0, %eax
.L62:
	.loc 1 403 1
	addq	$32, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -8
	ret
	.cfi_endproc
.LFE127:
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "  \0"
.LC16:
	.ascii "[PROGRAM]\0"
.LC17:
	.ascii "[VAR_DECL] %s %s\12\0"
.LC18:
	.ascii "[PRINT]\0"
.LC19:
	.ascii "[INPUT] %s\12\0"
.LC20:
	.ascii "[RETURN]\0"
.LC21:
	.ascii "[INCREMENT] %s\12\0"
.LC22:
	.ascii "[IF]\0"
.LC23:
	.ascii "[ELIF]\0"
.LC24:
	.ascii "[ELSE]\0"
.LC25:
	.ascii "[WHILE]\0"
.LC26:
	.ascii "[FOR]\0"
.LC27:
	.ascii "[DOWHILE]\0"
.LC28:
	.ascii "[BLOCK]\0"
.LC29:
	.ascii "[BINOP] %s\12\0"
.LC30:
	.ascii "[LITERAL] %s\12\0"
.LC31:
	.ascii "[IDENTIFIER] %s\12\0"
.LC32:
	.ascii "[UNKNOWN]\0"
	.text
	.globl	print_ast
	.def	print_ast;	.scl	2;	.type	32;	.endef
	.seh_proc	print_ast
print_ast:
.LFB128:
	.loc 1 408 42
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
	.loc 1 409 8
	cmpq	$0, 16(%rbp)
	je	.L102
.LBB13:
	.loc 1 411 14
	movl	$0, -4(%rbp)
	.loc 1 411 5
	jmp	.L74
.L75:
	.loc 1 411 37 discriminator 4
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 411 33 discriminator 4
	addl	$1, -4(%rbp)
.L74:
	.loc 1 411 23 discriminator 3
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L75
.LBE13:
	.loc 1 413 17
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 413 5
	cmpl	$15, %eax
	je	.L76
	cmpl	$15, %eax
	ja	.L77
	cmpl	$14, %eax
	je	.L78
	cmpl	$14, %eax
	ja	.L77
	cmpl	$13, %eax
	je	.L79
	cmpl	$13, %eax
	ja	.L77
	cmpl	$12, %eax
	je	.L80
	cmpl	$12, %eax
	ja	.L77
	cmpl	$11, %eax
	je	.L81
	cmpl	$11, %eax
	ja	.L77
	cmpl	$10, %eax
	je	.L82
	cmpl	$10, %eax
	ja	.L77
	cmpl	$9, %eax
	je	.L83
	cmpl	$9, %eax
	ja	.L77
	cmpl	$8, %eax
	je	.L84
	cmpl	$8, %eax
	ja	.L77
	cmpl	$7, %eax
	je	.L85
	cmpl	$7, %eax
	ja	.L77
	cmpl	$6, %eax
	je	.L86
	cmpl	$6, %eax
	ja	.L77
	cmpl	$5, %eax
	je	.L87
	cmpl	$5, %eax
	ja	.L77
	cmpl	$4, %eax
	je	.L88
	cmpl	$4, %eax
	ja	.L77
	cmpl	$3, %eax
	je	.L89
	cmpl	$3, %eax
	ja	.L77
	cmpl	$2, %eax
	je	.L90
	cmpl	$2, %eax
	ja	.L77
	testl	%eax, %eax
	je	.L91
	cmpl	$1, %eax
	je	.L92
	jmp	.L77
.L91:
	.loc 1 414 31
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 414 79
	jmp	.L93
.L92:
	.loc 1 415 31
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	printf
	.loc 1 416 78
	jmp	.L93
.L90:
	.loc 1 417 31
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 417 79
	jmp	.L93
.L89:
	.loc 1 418 31
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	.loc 1 418 79
	jmp	.L93
.L88:
	.loc 1 419 31
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 419 79
	jmp	.L93
.L87:
	.loc 1 420 31
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	.loc 1 420 79
	jmp	.L93
.L85:
	.loc 1 421 31
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 421 79
	jmp	.L93
.L84:
	.loc 1 422 31
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 422 79
	jmp	.L93
.L83:
	.loc 1 423 31
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 423 79
	jmp	.L93
.L82:
	.loc 1 424 31
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 424 79
	jmp	.L93
.L81:
	.loc 1 425 31
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 425 79
	jmp	.L93
.L80:
	.loc 1 426 31
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 426 79
	jmp	.L93
.L86:
	.loc 1 427 31
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 427 79
	jmp	.L93
.L79:
	.loc 1 428 31
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC29(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	.loc 1 428 79
	jmp	.L93
.L78:
	.loc 1 429 31
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	.loc 1 429 79
	jmp	.L93
.L76:
	.loc 1 430 31
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC31(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	.loc 1 430 79
	jmp	.L93
.L77:
	.loc 1 431 31
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 431 79
	nop
.L93:
	.loc 1 435 13
	movq	16(%rbp), %rax
	movq	64(%rax), %rax
	.loc 1 435 8
	testq	%rax, %rax
	je	.L94
	.loc 1 435 29 discriminator 1
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 435 43 discriminator 1
	movq	16(%rbp), %rax
	movq	64(%rax), %rax
	.loc 1 435 29 discriminator 1
	movq	%rax, %rcx
	call	print_ast
.L94:
	.loc 1 436 13
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	.loc 1 436 8
	testq	%rax, %rax
	je	.L95
	.loc 1 436 29 discriminator 1
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 436 43 discriminator 1
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	.loc 1 436 29 discriminator 1
	movq	%rax, %rcx
	call	print_ast
.L95:
	.loc 1 437 13
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 437 8
	testq	%rax, %rax
	je	.L96
	.loc 1 437 29 discriminator 1
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 437 43 discriminator 1
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 437 29 discriminator 1
	movq	%rax, %rcx
	call	print_ast
.L96:
	.loc 1 438 13
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 438 8
	testq	%rax, %rax
	je	.L97
	.loc 1 438 29 discriminator 1
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 438 43 discriminator 1
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 438 29 discriminator 1
	movq	%rax, %rcx
	call	print_ast
.L97:
	.loc 1 439 13
	movq	16(%rbp), %rax
	movq	80(%rax), %rax
	.loc 1 439 8
	testq	%rax, %rax
	je	.L98
	.loc 1 439 29 discriminator 1
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 439 43 discriminator 1
	movq	16(%rbp), %rax
	movq	80(%rax), %rax
	.loc 1 439 29 discriminator 1
	movq	%rax, %rcx
	call	print_ast
.L98:
	.loc 1 440 13
	movq	16(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 440 8
	testq	%rax, %rax
	je	.L99
	.loc 1 440 29 discriminator 1
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 440 43 discriminator 1
	movq	16(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 440 29 discriminator 1
	movq	%rax, %rcx
	call	print_ast
.L99:
.LBB14:
	.loc 1 442 14
	movl	$0, -8(%rbp)
	.loc 1 442 5
	jmp	.L100
.L101:
	.loc 1 443 9
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 443 23
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 443 29
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	.loc 1 443 9
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	print_ast
	.loc 1 442 44 discriminator 3
	addl	$1, -8(%rbp)
.L100:
	.loc 1 442 29 discriminator 1
	movq	16(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 442 23 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L101
	jmp	.L71
.L102:
.LBE14:
	.loc 1 409 16
	nop
.L71:
	.loc 1 445 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.seh_endproc
	.globl	free_ast
	.def	free_ast;	.scl	2;	.type	32;	.endef
	.seh_proc	free_ast
free_ast:
.LFB129:
	.loc 1 450 30
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
	.loc 1 451 8
	cmpq	$0, 16(%rbp)
	je	.L112
	.loc 1 453 13
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 453 8
	testq	%rax, %rax
	je	.L106
	.loc 1 453 35 discriminator 1
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 453 26 discriminator 1
	movq	%rax, %rcx
	call	free
.L106:
	.loc 1 454 13
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 454 8
	testq	%rax, %rax
	je	.L107
	.loc 1 454 35 discriminator 1
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 454 26 discriminator 1
	movq	%rax, %rcx
	call	free
.L107:
	.loc 1 455 13
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 455 8
	testq	%rax, %rax
	je	.L108
	.loc 1 455 35 discriminator 1
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 455 26 discriminator 1
	movq	%rax, %rcx
	call	free
.L108:
	.loc 1 457 18
	movq	16(%rbp), %rax
	movq	64(%rax), %rax
	.loc 1 457 5
	movq	%rax, %rcx
	call	free_ast
	.loc 1 458 18
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	.loc 1 458 5
	movq	%rax, %rcx
	call	free_ast
	.loc 1 459 18
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 459 5
	movq	%rax, %rcx
	call	free_ast
	.loc 1 460 18
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 460 5
	movq	%rax, %rcx
	call	free_ast
	.loc 1 461 18
	movq	16(%rbp), %rax
	movq	80(%rax), %rax
	.loc 1 461 5
	movq	%rax, %rcx
	call	free_ast
	.loc 1 462 18
	movq	16(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 462 5
	movq	%rax, %rcx
	call	free_ast
.LBB15:
	.loc 1 464 14
	movl	$0, -4(%rbp)
	.loc 1 464 5
	jmp	.L109
.L110:
	.loc 1 465 22
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 465 28
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 465 9
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free_ast
	.loc 1 464 44 discriminator 3
	addl	$1, -4(%rbp)
.L109:
	.loc 1 464 29 discriminator 1
	movq	16(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 464 23 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L110
.LBE15:
	.loc 1 467 13
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 467 8
	testq	%rax, %rax
	je	.L111
	.loc 1 467 30 discriminator 1
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 467 21 discriminator 1
	movq	%rax, %rcx
	call	free
.L111:
	.loc 1 469 5
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L103
.L112:
	.loc 1 451 16
	nop
.L103:
	.loc 1 470 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "parse error: expected 'put the fires in the bag'\12\0"
	.text
	.globl	parse
	.def	parse;	.scl	2;	.type	32;	.endef
	.seh_proc	parse
parse:
.LFB130:
	.loc 1 477 39
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
	.loc 1 478 17
	movq	16(%rbp), %rax
	movq	%rax, tokens(%rip)
	.loc 1 479 17
	movl	24(%rbp), %eax
	movl	%eax, token_count(%rip)
	.loc 1 480 17
	movl	$0, current(%rip)
	.loc 1 482 24
	movl	$0, %ecx
	call	make_node
	movq	%rax, -8(%rbp)
	.loc 1 485 11
	jmp	.L116
.L120:
	.loc 1 486 9
	call	advance
	.loc 1 488 15
	jmp	.L115
.L119:
	.loc 1 490 13
	call	advance
.L115:
	.loc 1 488 17
	movl	$11, %ecx
	call	check
	.loc 1 489 44
	testl	%eax, %eax
	jne	.L116
	.loc 1 488 39
	movl	$12, %ecx
	call	check
	.loc 1 488 35 discriminator 2
	testl	%eax, %eax
	jne	.L116
	.loc 1 489 17
	movl	$32, %ecx
	call	check
	.loc 1 488 56 discriminator 3
	testl	%eax, %eax
	jne	.L116
	.loc 1 489 48
	movl	$45, %ecx
	call	check
	.loc 1 489 44 discriminator 2
	testl	%eax, %eax
	je	.L119
.L116:
	.loc 1 485 12
	movl	$11, %ecx
	call	check
	.loc 1 485 30 discriminator 1
	testl	%eax, %eax
	jne	.L120
	.loc 1 485 33 discriminator 2
	movl	$12, %ecx
	call	check
	.loc 1 485 30 discriminator 3
	testl	%eax, %eax
	jne	.L120
	.loc 1 495 9
	movl	$32, %ecx
	call	check
	.loc 1 495 8 discriminator 1
	testl	%eax, %eax
	je	.L121
.LBB16:
	.loc 1 496 9
	call	advance
	.loc 1 497 26
	call	parse_block
	movq	%rax, -16(%rbp)
	.loc 1 498 9
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	add_child
.LBE16:
	jmp	.L124
.L121:
	.loc 1 500 17
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL4:
	movq	%rax, %rdx
	.loc 1 500 9 discriminator 1
	leaq	.LC33(%rip), %rax
	movq	%rdx, %r9
	movl	$49, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 1 501 9
	movl	$1, %ecx
	call	exit
.L124:
	.loc 1 504 12
	movq	-8(%rbp), %rax
	.loc 1 505 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.seh_endproc
.Letext0:
	.file 2 "D:/newmsysforc/ucrt64/include/stdio.h"
	.file 3 "src/lexer.h"
	.file 4 "src/parser.h"
	.file 5 "D:/newmsysforc/ucrt64/include/string.h"
	.file 6 "D:/newmsysforc/ucrt64/include/stdlib.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xedb
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.long	0x62
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
	.uleb128 0x14
	.ascii "_iobuf\0"
	.byte	0x8
	.byte	0x2
	.byte	0x21
	.byte	0xa
	.long	0xfa
	.uleb128 0x2
	.ascii "_Placeholder\0"
	.byte	0x2
	.byte	0x23
	.byte	0xb
	.long	0xfa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.uleb128 0xc
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x2f
	.byte	0x19
	.long	0xd3
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
	.uleb128 0x15
	.long	0xc3
	.byte	0x3
	.byte	0xf
	.long	0x3ec
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
	.uleb128 0xc
	.ascii "TokenType\0"
	.byte	0x3
	.byte	0x5d
	.byte	0x3
	.long	0x13c
	.uleb128 0x1e
	.byte	0x18
	.byte	0x3
	.byte	0x64
	.byte	0x9
	.long	0x431
	.uleb128 0x16
	.secrel32	.LASF2
	.byte	0x3
	.byte	0x65
	.byte	0xf
	.long	0x3ec
	.uleb128 0x2
	.ascii "value\0"
	.byte	0x3
	.byte	0x66
	.byte	0xf
	.long	0x431
	.byte	0x8
	.uleb128 0x2
	.ascii "line\0"
	.byte	0x3
	.byte	0x67
	.byte	0xf
	.long	0xb0
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x62
	.uleb128 0xc
	.ascii "Token\0"
	.byte	0x3
	.byte	0x68
	.byte	0x3
	.long	0x3fe
	.uleb128 0x15
	.long	0xc3
	.byte	0x4
	.byte	0x11
	.long	0x52c
	.uleb128 0x1
	.ascii "NODE_PROGRAM\0"
	.byte	0
	.uleb128 0x1
	.ascii "NODE_VAR_DECL\0"
	.byte	0x1
	.uleb128 0x1
	.ascii "NODE_PRINT\0"
	.byte	0x2
	.uleb128 0x1
	.ascii "NODE_INPUT\0"
	.byte	0x3
	.uleb128 0x1
	.ascii "NODE_RETURN\0"
	.byte	0x4
	.uleb128 0x1
	.ascii "NODE_INCREMENT\0"
	.byte	0x5
	.uleb128 0x1
	.ascii "NODE_BLOCK\0"
	.byte	0x6
	.uleb128 0x1
	.ascii "NODE_IF\0"
	.byte	0x7
	.uleb128 0x1
	.ascii "NODE_ELIF\0"
	.byte	0x8
	.uleb128 0x1
	.ascii "NODE_ELSE\0"
	.byte	0x9
	.uleb128 0x1
	.ascii "NODE_WHILE\0"
	.byte	0xa
	.uleb128 0x1
	.ascii "NODE_FOR\0"
	.byte	0xb
	.uleb128 0x1
	.ascii "NODE_DOWHILE\0"
	.byte	0xc
	.uleb128 0x1
	.ascii "NODE_BINOP\0"
	.byte	0xd
	.uleb128 0x1
	.ascii "NODE_LITERAL\0"
	.byte	0xe
	.uleb128 0x1
	.ascii "NODE_IDENTIFIER\0"
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.ascii "NodeType\0"
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.long	0x444
	.uleb128 0x14
	.ascii "ASTNode\0"
	.byte	0x68
	.byte	0x4
	.byte	0x32
	.byte	0x10
	.long	0x61a
	.uleb128 0x16
	.secrel32	.LASF2
	.byte	0x4
	.byte	0x34
	.byte	0xe
	.long	0x52c
	.uleb128 0x2
	.ascii "value\0"
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.long	0x431
	.byte	0x8
	.uleb128 0x2
	.ascii "op\0"
	.byte	0x4
	.byte	0x3a
	.byte	0xb
	.long	0x431
	.byte	0x10
	.uleb128 0x2
	.ascii "data_type\0"
	.byte	0x4
	.byte	0x3d
	.byte	0xb
	.long	0x431
	.byte	0x18
	.uleb128 0x2
	.ascii "left\0"
	.byte	0x4
	.byte	0x40
	.byte	0x15
	.long	0x61a
	.byte	0x20
	.uleb128 0x2
	.ascii "right\0"
	.byte	0x4
	.byte	0x41
	.byte	0x15
	.long	0x61a
	.byte	0x28
	.uleb128 0x2
	.ascii "body\0"
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x61f
	.byte	0x30
	.uleb128 0x2
	.ascii "body_count\0"
	.byte	0x4
	.byte	0x45
	.byte	0x16
	.long	0xb0
	.byte	0x38
	.uleb128 0x2
	.ascii "condition\0"
	.byte	0x4
	.byte	0x48
	.byte	0x15
	.long	0x61a
	.byte	0x40
	.uleb128 0x2
	.ascii "init\0"
	.byte	0x4
	.byte	0x4b
	.byte	0x15
	.long	0x61a
	.byte	0x48
	.uleb128 0x2
	.ascii "step\0"
	.byte	0x4
	.byte	0x4c
	.byte	0x15
	.long	0x61a
	.byte	0x50
	.uleb128 0x2
	.ascii "next_branch\0"
	.byte	0x4
	.byte	0x4f
	.byte	0x15
	.long	0x61a
	.byte	0x58
	.uleb128 0x2
	.ascii "line\0"
	.byte	0x4
	.byte	0x52
	.byte	0x9
	.long	0xb0
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.long	0x53d
	.uleb128 0xa
	.long	0x61a
	.uleb128 0xc
	.ascii "ASTNode\0"
	.byte	0x4
	.byte	0x54
	.byte	0x3
	.long	0x53d
	.uleb128 0x8
	.ascii "tokens\0"
	.byte	0x12
	.byte	0xf
	.long	0x64c
	.uleb128 0x9
	.byte	0x3
	.quad	tokens
	.uleb128 0xa
	.long	0x436
	.uleb128 0x8
	.ascii "token_count\0"
	.byte	0x13
	.byte	0xf
	.long	0xb0
	.uleb128 0x9
	.byte	0x3
	.quad	token_count
	.uleb128 0x8
	.ascii "current\0"
	.byte	0x14
	.byte	0xf
	.long	0xb0
	.uleb128 0x9
	.byte	0x3
	.quad	current
	.uleb128 0x1f
	.ascii "free\0"
	.byte	0x6
	.word	0x1c7
	.byte	0x10
	.long	0x69b
	.uleb128 0x5
	.long	0xfa
	.byte	0
	.uleb128 0xf
	.ascii "printf\0"
	.byte	0x2
	.word	0x1c2
	.byte	0xf
	.long	0xb0
	.long	0x6b6
	.uleb128 0x5
	.long	0x6b6
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.long	0x6a
	.uleb128 0x18
	.ascii "strdup\0"
	.byte	0x5
	.byte	0x77
	.byte	0x11
	.long	0x431
	.long	0x6d4
	.uleb128 0x5
	.long	0x6b6
	.byte	0
	.uleb128 0xf
	.ascii "realloc\0"
	.byte	0x6
	.word	0x1c9
	.byte	0x11
	.long	0xfa
	.long	0x6f4
	.uleb128 0x5
	.long	0xfa
	.uleb128 0x5
	.long	0x6f
	.byte	0
	.uleb128 0xf
	.ascii "calloc\0"
	.byte	0x6
	.word	0x1c6
	.byte	0x11
	.long	0xfa
	.long	0x713
	.uleb128 0x5
	.long	0x6f
	.uleb128 0x5
	.long	0x6f
	.byte	0
	.uleb128 0x20
	.ascii "exit\0"
	.byte	0x6
	.word	0x112
	.byte	0x20
	.long	0x727
	.uleb128 0x5
	.long	0xb0
	.byte	0
	.uleb128 0xf
	.ascii "fprintf\0"
	.byte	0x2
	.word	0x1c0
	.byte	0xf
	.long	0xb0
	.long	0x748
	.uleb128 0x5
	.long	0x748
	.uleb128 0x5
	.long	0x6b6
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.long	0xfc
	.uleb128 0x18
	.ascii "__acrt_iob_func\0"
	.byte	0x2
	.byte	0x65
	.byte	0x17
	.long	0x748
	.long	0x76f
	.uleb128 0x5
	.long	0xc3
	.byte	0
	.uleb128 0x21
	.ascii "parse\0"
	.byte	0x1
	.word	0x1dd
	.byte	0xa
	.long	0x7fc
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fc
	.uleb128 0x12
	.ascii "tok\0"
	.word	0x1dd
	.byte	0x17
	.long	0x64c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.ascii "count\0"
	.word	0x1dd
	.byte	0x20
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.ascii "program\0"
	.word	0x1e2
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x7ee
	.uleb128 0x7
	.ascii "block\0"
	.word	0x1f1
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.quad	.LVL4
	.long	0x74d
	.byte	0
	.uleb128 0xa
	.long	0x624
	.uleb128 0x19
	.ascii "free_ast\0"
	.word	0x1c2
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x852
	.uleb128 0x1a
	.secrel32	.LASF3
	.word	0x1c2
	.byte	0x18
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x7
	.ascii "i\0"
	.word	0x1d0
	.byte	0xe
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.ascii "print_ast\0"
	.word	0x198
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d8
	.uleb128 0x1a
	.secrel32	.LASF3
	.word	0x198
	.byte	0x19
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.ascii "depth\0"
	.word	0x198
	.byte	0x23
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x8b8
	.uleb128 0x7
	.ascii "i\0"
	.word	0x19b
	.byte	0xe
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x7
	.ascii "i\0"
	.word	0x1ba
	.byte	0xe
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.ascii "parse_statement\0"
	.word	0x16d
	.long	0x7fc
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x913
	.uleb128 0xd
	.quad	.LVL3
	.long	0x74d
	.byte	0
	.uleb128 0xe
	.ascii "parse_dowhile\0"
	.word	0x15c
	.long	0x7fc
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x94d
	.uleb128 0x10
	.secrel32	.LASF3
	.word	0x15d
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.ascii "parse_for\0"
	.word	0x13b
	.long	0x7fc
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a5
	.uleb128 0x10
	.secrel32	.LASF3
	.word	0x13c
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x7
	.ascii "step\0"
	.word	0x14d
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.ascii "parse_while\0"
	.word	0x12e
	.long	0x7fc
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x9dd
	.uleb128 0x10
	.secrel32	.LASF3
	.word	0x12f
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.ascii "parse_if\0"
	.word	0x10a
	.long	0x7fc
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7a
	.uleb128 0x10
	.secrel32	.LASF3
	.word	0x10b
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xa58
	.uleb128 0x7
	.ascii "elif\0"
	.word	0x113
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x7
	.ascii "els\0"
	.word	0x11b
	.byte	0x16
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xb
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x7
	.ascii "els\0"
	.word	0x121
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "parse_increment\0"
	.byte	0xfc
	.byte	0x11
	.long	0x7fc
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0xab6
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0xfd
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.ascii "parse_return\0"
	.byte	0xf0
	.byte	0x11
	.long	0x7fc
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0xaef
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0xf1
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.ascii "parse_input\0"
	.byte	0xe4
	.byte	0x11
	.long	0x7fc
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0xb27
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0xe5
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.ascii "parse_print\0"
	.byte	0xd8
	.byte	0x11
	.long	0x7fc
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0xb5f
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0xd9
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.ascii "parse_var_decl\0"
	.byte	0xbf
	.byte	0x11
	.long	0x7fc
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0xb9a
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0xc0
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.ascii "parse_block\0"
	.byte	0xad
	.byte	0x11
	.long	0x7fc
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf5
	.uleb128 0x8
	.ascii "block\0"
	.byte	0xae
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x8
	.ascii "stmt\0"
	.byte	0xb2
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "parse_expression\0"
	.byte	0x94
	.byte	0x11
	.long	0x7fc
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0xc55
	.uleb128 0x8
	.ascii "left\0"
	.byte	0x95
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x8
	.ascii "binop\0"
	.byte	0xa0
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "parse_primary\0"
	.byte	0x62
	.byte	0x11
	.long	0x7fc
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0xd43
	.uleb128 0x9
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xca5
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0x66
	.byte	0x12
	.long	0x7fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x9
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xcc9
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0x6d
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x9
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xced
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0x74
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x9
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xd11
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0x7c
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xd35
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0x84
	.byte	0x12
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.quad	.LVL2
	.long	0x74d
	.byte	0
	.uleb128 0x22
	.ascii "add_child\0"
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0xd89
	.uleb128 0x13
	.ascii "parent\0"
	.byte	0x50
	.byte	0x20
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii "child\0"
	.byte	0x50
	.byte	0x31
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.ascii "make_node\0"
	.byte	0x41
	.byte	0x11
	.long	0x7fc
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0xdda
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0x41
	.byte	0x24
	.long	0x52c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.secrel32	.LASF3
	.byte	0x42
	.byte	0xe
	.long	0x7fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.quad	.LVL1
	.long	0x74d
	.byte	0
	.uleb128 0x3
	.ascii "expect\0"
	.byte	0x36
	.byte	0xf
	.long	0x64c
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0xe28
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0x36
	.byte	0x20
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii "msg\0"
	.byte	0x36
	.byte	0x32
	.long	0x6b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.quad	.LVL0
	.long	0x74d
	.byte	0
	.uleb128 0x3
	.ascii "match\0"
	.byte	0x2c
	.byte	0x24
	.long	0xb0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5a
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0x2c
	.byte	0x34
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.ascii "check\0"
	.byte	0x27
	.byte	0xc
	.long	0xb0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0xe8c
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0x27
	.byte	0x1c
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.ascii "advance\0"
	.byte	0x1
	.byte	0x20
	.byte	0xf
	.long	0x64c
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0xebf
	.uleb128 0x8
	.ascii "t\0"
	.byte	0x21
	.byte	0xc
	.long	0x64c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.ascii "peek\0"
	.byte	0x1
	.byte	0x1b
	.byte	0xf
	.long	0x64c
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.ascii "type\0"
.LASF3:
	.ascii "node\0"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "D:\\brainrotgenz compiler\0"
.LASF0:
	.ascii "src/parser.c\0"
	.ident	"GCC: (Rev11, Built by MSYS2 project) 15.2.0"
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	calloc;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
