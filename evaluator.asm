	.file	"evaluator.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "D:/brainrotgenz compiler" "src/evaluator.c"
	.def	make_int;	.scl	3;	.type	32;	.endef
	.seh_proc	make_int
make_int:
.LFB108:
	.file 1 "src/evaluator.c"
	.loc 1 14 30
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
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 15 21
	movl	$0, -16(%rbp)
	.loc 1 15 39
	movl	24(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 1 15 51
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 1 16 1
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.seh_endproc
	.def	make_float;	.scl	3;	.type	32;	.endef
	.seh_proc	make_float
make_float:
.LFB109:
	.loc 1 17 35
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
	movq	%rcx, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	.loc 1 18 21
	movl	$1, -16(%rbp)
	.loc 1 18 41
	movsd	24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 1 18 53
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 1 19 1
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.seh_endproc
	.def	make_string;	.scl	3;	.type	32;	.endef
	.seh_proc	make_string
make_string:
.LFB110:
	.loc 1 20 41
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
	movq	%rdx, 24(%rbp)
	.loc 1 21 21
	movl	$2, -16(%rbp)
	.loc 1 21 44
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	.loc 1 21 42 discriminator 1
	movq	%rax, -8(%rbp)
	.loc 1 21 62 discriminator 1
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 1 22 1
	movq	16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.seh_endproc
	.def	make_bool;	.scl	3;	.type	32;	.endef
	.seh_proc	make_bool
make_bool:
.LFB111:
	.loc 1 23 31
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
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 24 21
	movl	$3, -16(%rbp)
	.loc 1 24 40
	movl	24(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 1 24 52
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 1 25 1
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.seh_endproc
	.def	make_null;	.scl	3;	.type	32;	.endef
	.seh_proc	make_null
make_null:
.LFB112:
	.loc 1 26 30
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
	movq	%rcx, 16(%rbp)
	.loc 1 27 21
	movl	$4, -16(%rbp)
	.loc 1 27 40
	movl	$0, -8(%rbp)
	.loc 1 27 52
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 1 28 1
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.seh_endproc
	.globl	env_create
	.def	env_create;	.scl	2;	.type	32;	.endef
	.seh_proc	env_create
env_create:
.LFB113:
	.loc 1 30 31
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
	.loc 1 31 24
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 32 19
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 33 19
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	.loc 1 34 19
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 35 12
	movq	-8(%rbp), %rax
	.loc 1 36 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.seh_endproc
	.globl	env_set
	.def	env_set;	.scl	2;	.type	32;	.endef
	.seh_proc	env_set
env_set:
.LFB114:
	.loc 1 38 63
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 96
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
.LBB2:
	.loc 1 39 14
	movl	$0, -4(%rbp)
	.loc 1 39 5
	jmp	.L14
.L18:
	.loc 1 40 23
	movq	32(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 40 32
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 40 35
	movq	(%rax), %rax
	.loc 1 40 13
	movq	40(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	.loc 1 40 12 discriminator 1
	testl	%eax, %eax
	jne	.L15
	.loc 1 41 20
	movq	32(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 41 29
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 41 38
	movl	8(%rax), %eax
	.loc 1 41 16
	cmpl	$2, %eax
	jne	.L16
	.loc 1 42 25
	movq	32(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 42 34
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 42 46
	movq	16(%rax), %rax
	.loc 1 42 17
	movq	%rax, %rcx
	call	free
.L16:
	.loc 1 43 16
	movq	32(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 43 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	.loc 1 43 35
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rcx)
	movq	%rdx, 16(%rcx)
	.loc 1 44 13
	jmp	.L13
.L15:
	.loc 1 39 38 discriminator 2
	addl	$1, -4(%rbp)
.L14:
	.loc 1 39 28 discriminator 1
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 39 23 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L18
.LBE2:
	.loc 1 47 12
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	.loc 1 47 26
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 47 8
	cmpl	%eax, %edx
	jl	.L19
	.loc 1 48 28
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 48 48
	testl	%eax, %eax
	je	.L20
	.loc 1 48 53 discriminator 1
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 48 48 discriminator 1
	leal	(%rax,%rax), %edx
	jmp	.L21
.L20:
	.loc 1 48 48 is_stmt 0 discriminator 2
	movl	$8, %edx
.L21:
	.loc 1 48 23 is_stmt 1 discriminator 4
	movq	32(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 1 50 28
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	.loc 1 50 39
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 1 49 36
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 49 25
	movq	%rax, %rcx
	call	realloc
	.loc 1 49 23 discriminator 1
	movq	32(%rbp), %rdx
	movq	%rax, (%rdx)
.L19:
	.loc 1 52 8
	movq	32(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 52 21
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	.loc 1 52 17
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	.loc 1 52 38
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	.loc 1 52 36 discriminator 1
	movq	%rax, (%rbx)
	.loc 1 53 8
	movq	32(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 53 21
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	.loc 1 53 17
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	.loc 1 53 36
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rcx)
	movq	%rdx, 16(%rcx)
	.loc 1 54 8
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 54 15
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, 8(%rax)
.L13:
	.loc 1 55 1
	addq	$72, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE114:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "runtime error: undefined variable '%s'\12\0"
	.text
	.globl	env_get
	.def	env_get;	.scl	2;	.type	32;	.endef
	.seh_proc	env_get
env_get:
.LFB115:
	.loc 1 57 51
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
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
.LBB3:
	.loc 1 58 14
	movl	$0, -4(%rbp)
	.loc 1 58 5
	jmp	.L23
.L26:
	.loc 1 59 23
	movq	24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 59 32
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 59 35
	movq	(%rax), %rax
	.loc 1 59 13
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	.loc 1 59 12 discriminator 1
	testl	%eax, %eax
	jne	.L24
	.loc 1 60 23
	movq	24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 60 32
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 60 35
	movq	16(%rbp), %rcx
	movq	16(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L27
.L24:
	.loc 1 58 38 discriminator 2
	addl	$1, -4(%rbp)
.L23:
	.loc 1 58 28 discriminator 1
	movq	24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 58 23 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L26
.LBE3:
	.loc 1 62 13
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL0:
	movq	%rax, %rcx
	.loc 1 62 5 discriminator 1
	movq	32(%rbp), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	fprintf
	.loc 1 63 5
	movl	$1, %ecx
	call	exit
.L27:
.LBB4:
	.loc 1 60 35
	nop
.LBE4:
	.loc 1 64 1
	movq	16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.seh_endproc
	.globl	env_free
	.def	env_free;	.scl	2;	.type	32;	.endef
	.seh_proc	env_free
env_free:
.LFB116:
	.loc 1 66 33
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
.LBB5:
	.loc 1 67 14
	movl	$0, -4(%rbp)
	.loc 1 67 5
	jmp	.L29
.L31:
	.loc 1 68 17
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 68 26
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 68 29
	movq	(%rax), %rax
	.loc 1 68 9
	movq	%rax, %rcx
	call	free
	.loc 1 69 16
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 69 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 69 34
	movl	8(%rax), %eax
	.loc 1 69 12
	cmpl	$2, %eax
	jne	.L30
	.loc 1 70 21
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 70 30
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 70 42
	movq	16(%rax), %rax
	.loc 1 70 13
	movq	%rax, %rcx
	call	free
.L30:
	.loc 1 67 38 discriminator 2
	addl	$1, -4(%rbp)
.L29:
	.loc 1 67 28 discriminator 1
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 67 23 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L31
.LBE5:
	.loc 1 72 13
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 72 5
	movq	%rax, %rcx
	call	free
	.loc 1 73 5
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 74 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "%g\0"
.LC3:
	.ascii "%s\0"
.LC4:
	.ascii "W\0"
.LC5:
	.ascii "L\0"
.LC6:
	.ascii "bum\0"
	.text
	.def	print_value;	.scl	3;	.type	32;	.endef
	.seh_proc	print_value
print_value:
.LFB117:
	.loc 1 76 34
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 1 77 14
	movl	-16(%rbp), %eax
	.loc 1 77 5
	cmpl	$4, %eax
	je	.L33
	cmpl	$4, %eax
	ja	.L34
	cmpl	$3, %eax
	je	.L35
	cmpl	$3, %eax
	ja	.L34
	cmpl	$2, %eax
	je	.L36
	cmpl	$2, %eax
	ja	.L34
	testl	%eax, %eax
	je	.L37
	cmpl	$1, %eax
	je	.L38
	jmp	.L34
.L37:
	.loc 1 78 26
	movl	-8(%rbp), %eax
	leaq	.LC1(%rip), %rcx
	movl	%eax, %edx
	call	printf
	.loc 1 78 61
	jmp	.L34
.L38:
	.loc 1 79 26
	movsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rdx
	leaq	.LC2(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	printf
	.loc 1 79 61
	jmp	.L34
.L36:
	.loc 1 80 26
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	.loc 1 80 61
	jmp	.L34
.L35:
	.loc 1 81 43
	movl	-8(%rbp), %eax
	.loc 1 81 26
	testl	%eax, %eax
	je	.L39
	.loc 1 81 26 is_stmt 0 discriminator 1
	leaq	.LC4(%rip), %rax
	jmp	.L40
.L39:
	.loc 1 81 26 discriminator 2
	leaq	.LC5(%rip), %rax
.L40:
	.loc 1 81 26 discriminator 4
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	call	printf
	.loc 1 81 60 is_stmt 1
	jmp	.L34
.L33:
	.loc 1 82 26
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 82 61
	nop
.L34:
	.loc 1 84 5
	movl	$10, %ecx
	call	putchar
	.loc 1 85 1
	nop
	addq	$56, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret
	.cfi_endproc
.LFE117:
	.seh_endproc
	.def	is_truthy;	.scl	3;	.type	32;	.endef
	.seh_proc	is_truthy
is_truthy:
.LFB118:
	.loc 1 87 31
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.seh_stackalloc	24
	.cfi_def_cfa_offset 48
	leaq	16(%rsp), %rbp
	.seh_setframe	%rbp, 16
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 1 88 14
	movl	-16(%rbp), %eax
	.loc 1 88 5
	cmpl	$4, %eax
	je	.L42
	cmpl	$4, %eax
	ja	.L43
	cmpl	$3, %eax
	je	.L44
	cmpl	$3, %eax
	ja	.L43
	cmpl	$2, %eax
	je	.L45
	cmpl	$2, %eax
	ja	.L43
	testl	%eax, %eax
	je	.L46
	cmpl	$1, %eax
	je	.L47
	jmp	.L43
.L46:
	.loc 1 89 37
	movl	-8(%rbp), %eax
	.loc 1 89 40
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L48
.L47:
	.loc 1 90 37
	movsd	-8(%rbp), %xmm0
	.loc 1 90 40
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setp	%al
	movl	$1, %edx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmovne	%edx, %eax
	movzbl	%al, %eax
	jmp	.L48
.L45:
	.loc 1 91 37
	movq	-8(%rbp), %rax
	.loc 1 91 40
	testq	%rax, %rax
	je	.L49
	.loc 1 91 47 discriminator 1
	movq	-8(%rbp), %rax
	.loc 1 91 49 discriminator 1
	movzbl	(%rax), %eax
	.loc 1 91 40 discriminator 1
	testb	%al, %al
	je	.L49
	.loc 1 91 40 is_stmt 0 discriminator 3
	movl	$1, %eax
	.loc 1 91 40
	jmp	.L48
.L49:
	.loc 1 91 40 discriminator 4
	movl	$0, %eax
	.loc 1 91 40
	jmp	.L48
.L44:
	.loc 1 92 37 is_stmt 1
	movl	-8(%rbp), %eax
	jmp	.L48
.L42:
	.loc 1 93 33
	movl	$0, %eax
	jmp	.L48
.L43:
	.loc 1 95 12
	movl	$0, %eax
.L48:
	.loc 1 96 1
	addq	$24, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -8
	ret
	.cfi_endproc
.LFE118:
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "+\0"
.LC9:
	.ascii "-\0"
.LC10:
	.ascii "*\0"
.LC11:
	.ascii "/\0"
	.align 8
.LC12:
	.ascii "runtime error: division by zero\12\0"
.LC13:
	.ascii "gyatt\0"
.LC14:
	.ascii "bugging\0"
.LC15:
	.ascii "no cap\0"
.LC16:
	.ascii "cap\0"
.LC17:
	.ascii ">\0"
.LC18:
	.ascii "<\0"
	.align 8
.LC19:
	.ascii "runtime error: unknown operator '%s'\12\0"
	.text
	.def	eval_binop;	.scl	3;	.type	32;	.endef
	.seh_proc	eval_binop
eval_binop:
.LFB119:
	.loc 1 98 66
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 128
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r9, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 1 99 12
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 1 99 19
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 1 100 9
	movl	$0, -20(%rbp)
	.loc 1 102 13
	movl	-48(%rbp), %eax
	.loc 1 102 8
	cmpl	$1, %eax
	je	.L52
	.loc 1 102 40 discriminator 1
	movl	-64(%rbp), %eax
	.loc 1 102 32 discriminator 1
	cmpl	$1, %eax
	jne	.L53
.L52:
	.loc 1 103 18
	movl	$1, -20(%rbp)
	.loc 1 104 17
	movl	-48(%rbp), %eax
	.loc 1 104 50
	cmpl	$1, %eax
	jne	.L54
	.loc 1 104 11 discriminator 1
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L55
.L54:
	.loc 1 104 67 discriminator 2
	movl	-40(%rbp), %eax
	.loc 1 104 11 discriminator 2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -8(%rbp)
.L55:
	.loc 1 105 18
	movl	-64(%rbp), %eax
	.loc 1 105 50
	cmpl	$1, %eax
	jne	.L56
	.loc 1 105 11 discriminator 1
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 1 105 11 is_stmt 0
	jmp	.L58
.L56:
	.loc 1 105 68 is_stmt 1 discriminator 2
	movl	-56(%rbp), %eax
	.loc 1 105 11 discriminator 2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 1 105 11 is_stmt 0
	jmp	.L58
.L53:
	.loc 1 106 20 is_stmt 1
	movl	-48(%rbp), %eax
	.loc 1 106 15
	testl	%eax, %eax
	je	.L59
	.loc 1 106 44 discriminator 1
	movl	-48(%rbp), %eax
	.loc 1 106 37 discriminator 1
	cmpl	$3, %eax
	jne	.L58
.L59:
	.loc 1 107 20
	movl	-40(%rbp), %eax
	.loc 1 107 11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 1 108 21
	movl	-56(%rbp), %eax
	.loc 1 108 11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
.L58:
	.loc 1 111 9
	leaq	.LC8(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 111 8 discriminator 1
	testl	%eax, %eax
	jne	.L60
	.loc 1 112 45
	cmpl	$0, -20(%rbp)
	je	.L61
	.loc 1 112 27 discriminator 1
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movq	32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	make_float
	.loc 1 112 45
	jmp	.L63
.L61:
	.loc 1 112 64 discriminator 2
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	.loc 1 112 47 discriminator 2
	cvttsd2sil	%xmm0, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_int
	.loc 1 112 45
	jmp	.L63
.L60:
	.loc 1 113 9
	leaq	.LC9(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 113 8 discriminator 1
	testl	%eax, %eax
	jne	.L64
	.loc 1 114 45
	cmpl	$0, -20(%rbp)
	je	.L65
	.loc 1 114 27 discriminator 1
	movsd	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movq	32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	make_float
	.loc 1 114 45
	jmp	.L63
.L65:
	.loc 1 114 64 discriminator 2
	movsd	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	.loc 1 114 47 discriminator 2
	cvttsd2sil	%xmm0, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_int
	.loc 1 114 45
	jmp	.L63
.L64:
	.loc 1 115 9
	leaq	.LC10(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 115 8 discriminator 1
	testl	%eax, %eax
	jne	.L67
	.loc 1 116 45
	cmpl	$0, -20(%rbp)
	je	.L68
	.loc 1 116 27 discriminator 1
	movsd	-8(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movq	32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	make_float
	.loc 1 116 45
	jmp	.L63
.L68:
	.loc 1 116 64 discriminator 2
	movsd	-8(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	.loc 1 116 47 discriminator 2
	cvttsd2sil	%xmm0, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_int
	.loc 1 116 45
	jmp	.L63
.L67:
	.loc 1 117 9
	leaq	.LC11(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 117 8 discriminator 1
	testl	%eax, %eax
	jne	.L70
	.loc 1 118 12
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jp	.L71
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jne	.L71
	.loc 1 118 31 discriminator 1
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL1:
	movq	%rax, %rdx
	.loc 1 118 23 discriminator 2
	leaq	.LC12(%rip), %rax
	movq	%rdx, %r9
	movl	$32, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 1 118 77 discriminator 3
	movl	$1, %ecx
	call	exit
.L71:
	.loc 1 119 45
	cmpl	$0, -20(%rbp)
	je	.L73
	.loc 1 119 27 discriminator 1
	movsd	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movq	32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	make_float
	.loc 1 119 45
	jmp	.L63
.L73:
	.loc 1 119 64 discriminator 2
	movsd	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	.loc 1 119 47 discriminator 2
	cvttsd2sil	%xmm0, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_int
	.loc 1 119 45
	jmp	.L63
.L70:
	.loc 1 121 9
	leaq	.LC13(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 121 8 discriminator 1
	testl	%eax, %eax
	jne	.L75
	.loc 1 121 43 discriminator 2
	movsd	-8(%rbp), %xmm0
	comisd	-16(%rbp), %xmm0
	setnb	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 121 43 is_stmt 0
	jmp	.L63
.L75:
	.loc 1 122 9 is_stmt 1
	leaq	.LC14(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 122 8 discriminator 1
	testl	%eax, %eax
	jne	.L76
	.loc 1 122 43 discriminator 2
	movsd	-16(%rbp), %xmm0
	comisd	-8(%rbp), %xmm0
	setnb	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 122 43 is_stmt 0
	jmp	.L63
.L76:
	.loc 1 123 9 is_stmt 1
	leaq	.LC15(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 123 8 discriminator 1
	testl	%eax, %eax
	jne	.L77
	.loc 1 123 43 discriminator 2
	movsd	-8(%rbp), %xmm0
	ucomisd	-16(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-8(%rbp), %xmm0
	ucomisd	-16(%rbp), %xmm0
	cmovne	%edx, %eax
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 123 43 is_stmt 0
	jmp	.L63
.L77:
	.loc 1 124 9 is_stmt 1
	leaq	.LC16(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 124 8 discriminator 1
	testl	%eax, %eax
	jne	.L78
	.loc 1 124 43 discriminator 2
	movsd	-8(%rbp), %xmm0
	ucomisd	-16(%rbp), %xmm0
	setp	%al
	movl	$1, %edx
	movsd	-8(%rbp), %xmm0
	ucomisd	-16(%rbp), %xmm0
	cmovne	%edx, %eax
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 124 43 is_stmt 0
	jmp	.L63
.L78:
	.loc 1 125 9 is_stmt 1
	leaq	.LC4(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 125 8 discriminator 1
	testl	%eax, %eax
	jne	.L79
	.loc 1 125 43 discriminator 2
	movsd	-8(%rbp), %xmm0
	comisd	-16(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 125 43 is_stmt 0
	jmp	.L63
.L79:
	.loc 1 126 9 is_stmt 1
	leaq	.LC5(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 126 8 discriminator 1
	testl	%eax, %eax
	jne	.L80
	.loc 1 126 43 discriminator 2
	movsd	-16(%rbp), %xmm0
	comisd	-8(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 126 43 is_stmt 0
	jmp	.L63
.L80:
	.loc 1 127 9 is_stmt 1
	leaq	.LC17(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 127 8 discriminator 1
	testl	%eax, %eax
	jne	.L81
	.loc 1 127 43 discriminator 2
	movsd	-8(%rbp), %xmm0
	comisd	-16(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 127 43 is_stmt 0
	jmp	.L63
.L81:
	.loc 1 128 9 is_stmt 1
	leaq	.LC18(%rip), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 1 128 8 discriminator 1
	testl	%eax, %eax
	jne	.L82
	.loc 1 128 43 discriminator 2
	movsd	-16(%rbp), %xmm0
	comisd	-8(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	make_bool
	.loc 1 128 43 is_stmt 0
	jmp	.L63
.L82:
	.loc 1 130 13 is_stmt 1
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL2:
	movq	%rax, %rcx
	.loc 1 130 5 discriminator 1
	movq	40(%rbp), %rdx
	leaq	.LC19(%rip), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	fprintf
	.loc 1 131 5
	movl	$1, %ecx
	call	exit
.L63:
	.loc 1 132 1
	movq	32(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -88
	ret
	.cfi_endproc
.LFE119:
	.seh_endproc
	.section .rdata,"dr"
.LC20:
	.ascii "\12\0"
	.align 8
.LC22:
	.ascii "runtime error: unknown node type %d\12\0"
	.text
	.globl	evaluate
	.def	evaluate;	.scl	2;	.type	32;	.endef
	.seh_proc	evaluate
evaluate:
.LFB120:
	.loc 1 134 49
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$568, %rsp
	.seh_stackalloc	568
	.cfi_def_cfa_offset 592
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 464
	.seh_endprologue
	movq	%rcx, 464(%rbp)
	movq	%rdx, 472(%rbp)
	movq	%r8, 480(%rbp)
	.loc 1 135 8
	cmpq	$0, 472(%rbp)
	jne	.L85
	.loc 1 135 23 discriminator 1
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
	.loc 1 135 23 is_stmt 0
	jmp	.L84
.L85:
	.loc 1 137 17 is_stmt 1
	movq	472(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 137 5
	cmpl	$15, %eax
	je	.L87
	cmpl	$15, %eax
	ja	.L88
	cmpl	$14, %eax
	je	.L89
	cmpl	$14, %eax
	ja	.L88
	cmpl	$13, %eax
	je	.L90
	cmpl	$13, %eax
	ja	.L88
	cmpl	$12, %eax
	je	.L91
	cmpl	$12, %eax
	ja	.L88
	cmpl	$11, %eax
	je	.L92
	cmpl	$11, %eax
	ja	.L88
	cmpl	$10, %eax
	je	.L116
	cmpl	$10, %eax
	ja	.L88
	cmpl	$9, %eax
	je	.L94
	cmpl	$9, %eax
	ja	.L88
	cmpl	$8, %eax
	je	.L95
	cmpl	$8, %eax
	ja	.L88
	cmpl	$7, %eax
	je	.L96
	cmpl	$7, %eax
	ja	.L88
	cmpl	$6, %eax
	je	.L97
	cmpl	$6, %eax
	ja	.L88
	cmpl	$5, %eax
	je	.L98
	cmpl	$5, %eax
	ja	.L88
	cmpl	$4, %eax
	je	.L99
	cmpl	$4, %eax
	ja	.L88
	cmpl	$3, %eax
	je	.L100
	cmpl	$3, %eax
	ja	.L88
	cmpl	$2, %eax
	je	.L101
	cmpl	$2, %eax
	ja	.L88
	testl	%eax, %eax
	je	.L102
	cmpl	$1, %eax
	je	.L103
	jmp	.L88
.L89:
.LBB6:
	.loc 1 141 22
	movq	472(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 141 10
	movzbl	(%rax), %eax
	movb	%al, 423(%rbp)
	.loc 1 142 8
	cmpb	$47, 423(%rbp)
	jle	.L104
	.loc 1 142 22 discriminator 1
	cmpb	$57, 423(%rbp)
	jg	.L104
	.loc 1 143 24
	movq	472(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 143 13
	movl	$46, %edx
	movq	%rax, %rcx
	call	strchr
	.loc 1 143 12 discriminator 1
	testq	%rax, %rax
	je	.L105
	.loc 1 144 40
	movq	472(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 144 20
	movq	%rax, %rcx
	call	atof
	movq	%xmm0, %rdx
	.loc 1 144 20 is_stmt 0 discriminator 1
	movq	464(%rbp), %rax
	movq	%rdx, %xmm1
	movq	%rax, %rcx
	call	make_float
	.loc 1 144 20
	jmp	.L84
.L105:
	.loc 1 145 41 is_stmt 1
	movq	472(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 145 30
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movl	%eax, %edx
	.loc 1 145 16 discriminator 1
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_int
	.loc 1 145 16 is_stmt 0
	jmp	.L84
.L104:
	.loc 1 147 28 is_stmt 1
	movq	472(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 147 12
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_string
	jmp	.L84
.L87:
.LBE6:
	.loc 1 151 37
	movq	472(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 151 20
	movq	464(%rbp), %rax
	movq	480(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	env_get
	jmp	.L84
.L90:
.LBB7:
	.loc 1 154 40
	movq	472(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 1 154 27
	leaq	320(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 155 40
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 155 27
	leaq	304(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 156 35
	movq	472(%rbp), %rax
	movq	16(%rax), %r10
	.loc 1 156 20
	movq	464(%rbp), %rcx
	movq	320(%rbp), %rax
	movq	328(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	304(%rbp), %rax
	movq	312(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%r10, %rdx
	call	eval_binop
.LBE7:
	.loc 1 258 1
	jmp	.L84
.L103:
.LBB8:
	.loc 1 160 38
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 160 25
	leaq	288(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 161 30
	movq	472(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 161 13
	movq	288(%rbp), %rax
	movq	296(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rdx
	movq	480(%rbp), %rax
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	env_set
	.loc 1 162 20
	movq	464(%rbp), %rcx
	movq	288(%rbp), %rax
	movq	296(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.LBE8:
	.loc 1 258 1
	jmp	.L84
.L101:
.LBB9:
	.loc 1 166 38
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 166 25
	leaq	272(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 167 13
	movq	272(%rbp), %rax
	movq	280(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	print_value
	.loc 1 168 20
	movl	272(%rbp), %eax
	.loc 1 168 16
	cmpl	$2, %eax
	jne	.L106
	.loc 1 168 52 discriminator 1
	movq	280(%rbp), %rax
	.loc 1 168 41 discriminator 1
	movq	%rax, %rcx
	call	free
.L106:
	.loc 1 169 20
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
.LBE9:
	.loc 1 258 1
	jmp	.L84
.L100:
.LBB10:
	.loc 1 174 47
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL3:
	movq	%rax, %rdx
	.loc 1 174 17 discriminator 1
	leaq	-64(%rbp), %rax
	movq	%rdx, %r8
	movl	$256, %edx
	movq	%rax, %rcx
	call	fgets
	.loc 1 174 16 discriminator 2
	testq	%rax, %rax
	je	.L107
.LBB11:
	.loc 1 175 24
	leaq	.LC20(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	strcspn
	.loc 1 175 47 discriminator 1
	movb	$0, -64(%rbp,%rax)
	.loc 1 177 28
	leaq	264(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$10, %r8d
	movq	%rax, %rcx
	call	strtol
	movl	%eax, 416(%rbp)
	.loc 1 178 21
	movq	264(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 178 20
	testb	%al, %al
	jne	.L108
	.loc 1 179 21
	leaq	336(%rbp), %rax
	movl	416(%rbp), %edx
	movq	%rax, %rcx
	call	make_int
	.loc 1 179 38 discriminator 1
	movq	472(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 179 21 discriminator 1
	movq	336(%rbp), %rax
	movq	344(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rdx
	movq	480(%rbp), %rax
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	env_set
	jmp	.L107
.L108:
	.loc 1 181 21
	leaq	352(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rcx
	call	make_string
	.loc 1 181 38 discriminator 1
	movq	472(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 181 21 discriminator 1
	movq	352(%rbp), %rax
	movq	360(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rdx
	movq	480(%rbp), %rax
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	env_set
.L107:
.LBE11:
	.loc 1 183 20
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
.LBE10:
	.loc 1 258 1
	jmp	.L84
.L99:
	.loc 1 187 33
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 187 20
	movq	464(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	jmp	.L84
.L98:
.LBB12:
	.loc 1 190 42
	movq	472(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 190 25
	leaq	240(%rbp), %rax
	movq	480(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	env_get
	.loc 1 191 20
	movl	240(%rbp), %eax
	.loc 1 191 16
	testl	%eax, %eax
	jne	.L110
	.loc 1 191 46 discriminator 1
	movl	248(%rbp), %eax
	.loc 1 191 48 discriminator 1
	addl	$1, %eax
	movl	%eax, 248(%rbp)
.L110:
	.loc 1 192 20
	movl	240(%rbp), %eax
	.loc 1 192 16
	cmpl	$1, %eax
	jne	.L111
	.loc 1 192 46 discriminator 1
	movsd	248(%rbp), %xmm1
	.loc 1 192 48 discriminator 1
	movsd	.LC21(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 248(%rbp)
.L111:
	.loc 1 193 30
	movq	472(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 193 13
	movq	240(%rbp), %rax
	movq	248(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rdx
	movq	480(%rbp), %rax
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	env_set
	.loc 1 194 20
	movq	464(%rbp), %rcx
	movq	240(%rbp), %rax
	movq	248(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.LBE12:
	.loc 1 258 1
	jmp	.L84
.L96:
.LBB13:
	.loc 1 198 39
	movq	472(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 198 26
	leaq	224(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 199 17
	movq	224(%rbp), %rax
	movq	232(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	is_truthy
	.loc 1 199 16 discriminator 1
	testl	%eax, %eax
	je	.L112
	.loc 1 200 30
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 200 17
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	jmp	.L113
.L112:
	.loc 1 201 26
	movq	472(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 201 21
	testq	%rax, %rax
	je	.L113
	.loc 1 202 30
	movq	472(%rbp), %rax
	movq	88(%rax), %rdx
	.loc 1 202 17
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
.L113:
	.loc 1 203 20
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
.LBE13:
	.loc 1 258 1
	jmp	.L84
.L95:
.LBB14:
	.loc 1 207 39
	movq	472(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 207 26
	leaq	208(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 208 17
	movq	208(%rbp), %rax
	movq	216(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	is_truthy
	.loc 1 208 16 discriminator 1
	testl	%eax, %eax
	je	.L114
	.loc 1 209 30
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 209 17
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	jmp	.L115
.L114:
	.loc 1 210 26
	movq	472(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 210 21
	testq	%rax, %rax
	je	.L115
	.loc 1 211 30
	movq	472(%rbp), %rax
	movq	88(%rax), %rdx
	.loc 1 211 17
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
.L115:
	.loc 1 212 20
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
.LBE14:
	.loc 1 258 1
	jmp	.L84
.L94:
	.loc 1 216 26
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 216 13
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 217 20
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
	jmp	.L84
.L117:
	.loc 1 221 30
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 221 17
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
.L116:
	.loc 1 220 43
	movq	472(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 220 20
	leaq	368(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 220 20 is_stmt 0 discriminator 1
	movq	368(%rbp), %rax
	movq	376(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	is_truthy
	.loc 1 220 20 discriminator 2
	testl	%eax, %eax
	jne	.L117
	.loc 1 222 20 is_stmt 1
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
	jmp	.L84
.L92:
	.loc 1 226 21
	movq	472(%rbp), %rax
	movq	72(%rax), %rax
	.loc 1 226 16
	testq	%rax, %rax
	je	.L120
	.loc 1 226 42 discriminator 1
	movq	472(%rbp), %rax
	movq	72(%rax), %rdx
	.loc 1 226 29 discriminator 1
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 227 19
	jmp	.L120
.L121:
	.loc 1 228 30
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 228 17
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 229 25
	movq	472(%rbp), %rax
	movq	80(%rax), %rax
	.loc 1 229 20
	testq	%rax, %rax
	je	.L120
	.loc 1 229 46 discriminator 1
	movq	472(%rbp), %rax
	movq	80(%rax), %rdx
	.loc 1 229 33 discriminator 1
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
.L120:
	.loc 1 227 43
	movq	472(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 227 20
	leaq	384(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 227 20 is_stmt 0 discriminator 1
	movq	384(%rbp), %rax
	movq	392(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	is_truthy
	.loc 1 227 20 discriminator 2
	testl	%eax, %eax
	jne	.L121
	.loc 1 231 20 is_stmt 1
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
	jmp	.L84
.L91:
	.loc 1 236 30
	movq	472(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 236 17
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 237 45 discriminator 3
	movq	472(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 237 22 discriminator 3
	leaq	400(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	movq	400(%rbp), %rax
	movq	408(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	is_truthy
	testl	%eax, %eax
	je	.L122
	.loc 1 234 9
	nop
	jmp	.L91
.L122:
	.loc 1 238 20
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
	jmp	.L84
.L97:
.LBB15:
	.loc 1 242 26
	leaq	192(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
.LBB16:
	.loc 1 243 22
	movl	$0, 428(%rbp)
	.loc 1 243 13
	jmp	.L123
.L124:
	.loc 1 244 37
	movq	472(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 244 43
	movl	428(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 244 24
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 192(%rbp)
	movq	%rdx, 200(%rbp)
	.loc 1 243 52 discriminator 3
	addl	$1, 428(%rbp)
.L123:
	.loc 1 243 37 discriminator 1
	movq	472(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 243 31 discriminator 1
	cmpl	%eax, 428(%rbp)
	jl	.L124
.LBE16:
	.loc 1 245 20
	movq	464(%rbp), %rcx
	movq	192(%rbp), %rax
	movq	200(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.LBE15:
	.loc 1 258 1
	jmp	.L84
.L102:
.LBB17:
	.loc 1 249 22
	movl	$0, 424(%rbp)
	.loc 1 249 13
	jmp	.L125
.L126:
	.loc 1 250 30
	movq	472(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 250 36
	movl	424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 250 17
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	480(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 249 52 discriminator 3
	addl	$1, 424(%rbp)
.L125:
	.loc 1 249 37 discriminator 1
	movq	472(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 249 31 discriminator 1
	cmpl	%eax, 424(%rbp)
	jl	.L126
.LBE17:
	.loc 1 251 20
	movq	464(%rbp), %rax
	movq	%rax, %rcx
	call	make_null
	jmp	.L84
.L88:
	.loc 1 255 74
	movq	472(%rbp), %rax
	movl	(%rax), %ebx
	.loc 1 255 21
	movl	$2, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL4:
	movq	%rax, %rcx
	.loc 1 255 13 discriminator 1
	leaq	.LC22(%rip), %rax
	movl	%ebx, %r8d
	movq	%rax, %rdx
	call	fprintf
	.loc 1 256 13
	movl	$1, %ecx
	call	exit
.L84:
	.loc 1 258 1
	movq	464(%rbp), %rax
	addq	$568, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -552
	ret
	.cfi_endproc
.LFE120:
	.seh_endproc
	.globl	run
	.def	run;	.scl	2;	.type	32;	.endef
	.seh_proc	run
run:
.LFB121:
	.loc 1 260 24
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
	.loc 1 261 24
	call	env_create
	movq	%rax, -8(%rbp)
	.loc 1 262 5
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	evaluate
	.loc 1 263 5
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	env_free
	.loc 1 264 1
	nop
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 2 "D:/newmsysforc/ucrt64/include/corecrt.h"
	.file 3 "D:/newmsysforc/ucrt64/include/stdio.h"
	.file 4 "src/parser.h"
	.file 5 "src/evaluator.h"
	.file 6 "D:/newmsysforc/ucrt64/include/string.h"
	.file 7 "D:/newmsysforc/ucrt64/include/stdlib.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xc43
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x18
	.ascii "GNU C11 15.2.0 -mtune=generic -march=nocona -g -std=c11\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x19
	.long	0x62
	.uleb128 0x9
	.ascii "size_t\0"
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.long	0x7e
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x13
	.ascii "_iobuf\0"
	.byte	0x8
	.byte	0x3
	.byte	0x21
	.byte	0xa
	.long	0x109
	.uleb128 0x3
	.ascii "_Placeholder\0"
	.byte	0x3
	.byte	0x23
	.byte	0xb
	.long	0x109
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.uleb128 0x9
	.ascii "FILE\0"
	.byte	0x3
	.byte	0x2f
	.byte	0x19
	.long	0xe2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x8
	.long	0x62
	.uleb128 0xd
	.long	0x14b
	.uleb128 0x14
	.long	0xd2
	.byte	0x4
	.byte	0x11
	.long	0x23d
	.uleb128 0x4
	.ascii "NODE_PROGRAM\0"
	.byte	0
	.uleb128 0x4
	.ascii "NODE_VAR_DECL\0"
	.byte	0x1
	.uleb128 0x4
	.ascii "NODE_PRINT\0"
	.byte	0x2
	.uleb128 0x4
	.ascii "NODE_INPUT\0"
	.byte	0x3
	.uleb128 0x4
	.ascii "NODE_RETURN\0"
	.byte	0x4
	.uleb128 0x4
	.ascii "NODE_INCREMENT\0"
	.byte	0x5
	.uleb128 0x4
	.ascii "NODE_BLOCK\0"
	.byte	0x6
	.uleb128 0x4
	.ascii "NODE_IF\0"
	.byte	0x7
	.uleb128 0x4
	.ascii "NODE_ELIF\0"
	.byte	0x8
	.uleb128 0x4
	.ascii "NODE_ELSE\0"
	.byte	0x9
	.uleb128 0x4
	.ascii "NODE_WHILE\0"
	.byte	0xa
	.uleb128 0x4
	.ascii "NODE_FOR\0"
	.byte	0xb
	.uleb128 0x4
	.ascii "NODE_DOWHILE\0"
	.byte	0xc
	.uleb128 0x4
	.ascii "NODE_BINOP\0"
	.byte	0xd
	.uleb128 0x4
	.ascii "NODE_LITERAL\0"
	.byte	0xe
	.uleb128 0x4
	.ascii "NODE_IDENTIFIER\0"
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.ascii "NodeType\0"
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.long	0x155
	.uleb128 0x13
	.ascii "ASTNode\0"
	.byte	0x68
	.byte	0x4
	.byte	0x32
	.byte	0x10
	.long	0x32d
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x4
	.byte	0x34
	.byte	0xe
	.long	0x23d
	.byte	0
	.uleb128 0x3
	.ascii "value\0"
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.long	0x14b
	.byte	0x8
	.uleb128 0x3
	.ascii "op\0"
	.byte	0x4
	.byte	0x3a
	.byte	0xb
	.long	0x14b
	.byte	0x10
	.uleb128 0x3
	.ascii "data_type\0"
	.byte	0x4
	.byte	0x3d
	.byte	0xb
	.long	0x14b
	.byte	0x18
	.uleb128 0x3
	.ascii "left\0"
	.byte	0x4
	.byte	0x40
	.byte	0x15
	.long	0x32d
	.byte	0x20
	.uleb128 0x3
	.ascii "right\0"
	.byte	0x4
	.byte	0x41
	.byte	0x15
	.long	0x32d
	.byte	0x28
	.uleb128 0x3
	.ascii "body\0"
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x332
	.byte	0x30
	.uleb128 0x3
	.ascii "body_count\0"
	.byte	0x4
	.byte	0x45
	.byte	0x16
	.long	0xbf
	.byte	0x38
	.uleb128 0x3
	.ascii "condition\0"
	.byte	0x4
	.byte	0x48
	.byte	0x15
	.long	0x32d
	.byte	0x40
	.uleb128 0x3
	.ascii "init\0"
	.byte	0x4
	.byte	0x4b
	.byte	0x15
	.long	0x32d
	.byte	0x48
	.uleb128 0x3
	.ascii "step\0"
	.byte	0x4
	.byte	0x4c
	.byte	0x15
	.long	0x32d
	.byte	0x50
	.uleb128 0x3
	.ascii "next_branch\0"
	.byte	0x4
	.byte	0x4f
	.byte	0x15
	.long	0x32d
	.byte	0x58
	.uleb128 0x3
	.ascii "line\0"
	.byte	0x4
	.byte	0x52
	.byte	0x9
	.long	0xbf
	.byte	0x60
	.byte	0
	.uleb128 0x8
	.long	0x24e
	.uleb128 0x8
	.long	0x32d
	.uleb128 0x9
	.ascii "ASTNode\0"
	.byte	0x4
	.byte	0x54
	.byte	0x3
	.long	0x24e
	.uleb128 0x14
	.long	0xd2
	.byte	0x5
	.byte	0x12
	.long	0x38c
	.uleb128 0x4
	.ascii "VAL_INT\0"
	.byte	0
	.uleb128 0x4
	.ascii "VAL_FLOAT\0"
	.byte	0x1
	.uleb128 0x4
	.ascii "VAL_STRING\0"
	.byte	0x2
	.uleb128 0x4
	.ascii "VAL_BOOL\0"
	.byte	0x3
	.uleb128 0x4
	.ascii "VAL_NULL\0"
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.ascii "ValueType\0"
	.byte	0x5
	.byte	0x18
	.byte	0x3
	.long	0x347
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5
	.byte	0x20
	.byte	0x5
	.long	0x3c0
	.uleb128 0xf
	.ascii "i\0"
	.byte	0x21
	.long	0xbf
	.uleb128 0xf
	.ascii "f\0"
	.byte	0x22
	.long	0x129
	.uleb128 0xf
	.ascii "s\0"
	.byte	0x23
	.long	0x14b
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x1e
	.long	0x3e2
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x5
	.byte	0x1f
	.byte	0xf
	.long	0x38c
	.byte	0
	.uleb128 0x3
	.ascii "as\0"
	.byte	0x5
	.byte	0x24
	.byte	0x7
	.long	0x39e
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.ascii "Value\0"
	.byte	0x5
	.byte	0x25
	.byte	0x3
	.long	0x3c0
	.uleb128 0x10
	.byte	0x18
	.byte	0x2b
	.long	0x415
	.uleb128 0x3
	.ascii "name\0"
	.byte	0x5
	.byte	0x2c
	.byte	0xc
	.long	0x14b
	.byte	0
	.uleb128 0x3
	.ascii "value\0"
	.byte	0x5
	.byte	0x2d
	.byte	0xc
	.long	0x3e2
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.ascii "EnvEntry\0"
	.byte	0x5
	.byte	0x2e
	.byte	0x3
	.long	0x3f0
	.uleb128 0x10
	.byte	0x10
	.byte	0x34
	.long	0x460
	.uleb128 0x3
	.ascii "entries\0"
	.byte	0x5
	.byte	0x35
	.byte	0xf
	.long	0x460
	.byte	0
	.uleb128 0x3
	.ascii "count\0"
	.byte	0x5
	.byte	0x36
	.byte	0xf
	.long	0xbf
	.byte	0x8
	.uleb128 0x3
	.ascii "capacity\0"
	.byte	0x5
	.byte	0x37
	.byte	0xf
	.long	0xbf
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x415
	.uleb128 0x9
	.ascii "Environment\0"
	.byte	0x5
	.byte	0x38
	.byte	0x3
	.long	0x426
	.uleb128 0xb
	.ascii "strcspn\0"
	.byte	0x6
	.byte	0x57
	.byte	0x12
	.long	0x6f
	.long	0x498
	.uleb128 0x2
	.long	0x498
	.uleb128 0x2
	.long	0x498
	.byte	0
	.uleb128 0x8
	.long	0x6a
	.uleb128 0xd
	.long	0x498
	.uleb128 0xa
	.ascii "fgets\0"
	.byte	0x3
	.word	0x22d
	.byte	0x11
	.long	0x14b
	.long	0x4c5
	.uleb128 0x2
	.long	0x150
	.uleb128 0x2
	.long	0xbf
	.uleb128 0x2
	.long	0x4ca
	.byte	0
	.uleb128 0x8
	.long	0x10b
	.uleb128 0xd
	.long	0x4c5
	.uleb128 0xa
	.ascii "strtol\0"
	.byte	0x7
	.word	0x198
	.byte	0x10
	.long	0xc6
	.long	0x4f3
	.uleb128 0x2
	.long	0x49d
	.uleb128 0x2
	.long	0x4f8
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0x8
	.long	0x14b
	.uleb128 0xd
	.long	0x4f3
	.uleb128 0xa
	.ascii "atof\0"
	.byte	0x7
	.word	0x13d
	.byte	0x12
	.long	0x129
	.long	0x515
	.uleb128 0x2
	.long	0x498
	.byte	0
	.uleb128 0xb
	.ascii "strchr\0"
	.byte	0x6
	.byte	0x4b
	.byte	0x1f
	.long	0x14b
	.long	0x533
	.uleb128 0x2
	.long	0x498
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0xa
	.ascii "printf\0"
	.byte	0x3
	.word	0x1c2
	.byte	0xf
	.long	0xbf
	.long	0x54e
	.uleb128 0x2
	.long	0x498
	.uleb128 0x15
	.byte	0
	.uleb128 0x1c
	.ascii "exit\0"
	.byte	0x7
	.word	0x112
	.byte	0x20
	.long	0x562
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0xa
	.ascii "fprintf\0"
	.byte	0x3
	.word	0x1c0
	.byte	0xf
	.long	0xbf
	.long	0x583
	.uleb128 0x2
	.long	0x4c5
	.uleb128 0x2
	.long	0x498
	.uleb128 0x15
	.byte	0
	.uleb128 0xb
	.ascii "__acrt_iob_func\0"
	.byte	0x3
	.byte	0x65
	.byte	0x17
	.long	0x4c5
	.long	0x5a5
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0xa
	.ascii "realloc\0"
	.byte	0x7
	.word	0x1c9
	.byte	0x11
	.long	0x109
	.long	0x5c5
	.uleb128 0x2
	.long	0x109
	.uleb128 0x2
	.long	0x7e
	.byte	0
	.uleb128 0x1d
	.ascii "free\0"
	.byte	0x7
	.word	0x1c7
	.byte	0x10
	.long	0x5d9
	.uleb128 0x2
	.long	0x109
	.byte	0
	.uleb128 0xb
	.ascii "strcmp\0"
	.byte	0x6
	.byte	0x3f
	.byte	0xf
	.long	0xbf
	.long	0x5f7
	.uleb128 0x2
	.long	0x498
	.uleb128 0x2
	.long	0x498
	.byte	0
	.uleb128 0xa
	.ascii "malloc\0"
	.byte	0x7
	.word	0x1c8
	.byte	0x11
	.long	0x109
	.long	0x611
	.uleb128 0x2
	.long	0x7e
	.byte	0
	.uleb128 0xb
	.ascii "strdup\0"
	.byte	0x6
	.byte	0x77
	.byte	0x11
	.long	0x14b
	.long	0x62a
	.uleb128 0x2
	.long	0x498
	.byte	0
	.uleb128 0x1e
	.ascii "run\0"
	.byte	0x1
	.word	0x104
	.byte	0x6
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x66a
	.uleb128 0x1f
	.ascii "ast\0"
	.byte	0x1
	.word	0x104
	.byte	0x13
	.long	0x66a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "env\0"
	.byte	0x1
	.word	0x105
	.byte	0x12
	.long	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	0x337
	.uleb128 0x8
	.long	0x465
	.uleb128 0x11
	.ascii "evaluate\0"
	.byte	0x86
	.byte	0x7
	.long	0x3e2
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ab
	.uleb128 0x5
	.ascii "node\0"
	.byte	0x86
	.byte	0x19
	.long	0x66a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.ascii "env\0"
	.byte	0x86
	.byte	0x2c
	.long	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x7
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x6dd
	.uleb128 0x1
	.ascii "first\0"
	.byte	0x8d
	.byte	0xa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.uleb128 0x7
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x714
	.uleb128 0x1
	.ascii "left\0"
	.byte	0x9a
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1
	.ascii "right\0"
	.byte	0x9b
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x7
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x739
	.uleb128 0x1
	.ascii "val\0"
	.byte	0xa0
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x7
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x75e
	.uleb128 0x1
	.ascii "val\0"
	.byte	0xa6
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x7
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x7c6
	.uleb128 0x1
	.ascii "buffer\0"
	.byte	0xad
	.byte	0x12
	.long	0x8ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x7
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x7b8
	.uleb128 0x1
	.ascii "end\0"
	.byte	0xb0
	.byte	0x17
	.long	0x14b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1
	.ascii "num\0"
	.byte	0xb1
	.byte	0x16
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.quad	.LVL3
	.long	0x583
	.byte	0
	.uleb128 0x7
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x7eb
	.uleb128 0x1
	.ascii "val\0"
	.byte	0xbe
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x7
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x811
	.uleb128 0x1
	.ascii "cond\0"
	.byte	0xc6
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x7
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x837
	.uleb128 0x1
	.ascii "cond\0"
	.byte	0xcf
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x7
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x87b
	.uleb128 0x1
	.ascii "last\0"
	.byte	0xf2
	.byte	0x13
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x12
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x1
	.ascii "i\0"
	.byte	0xf3
	.byte	0x16
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x89d
	.uleb128 0x1
	.ascii "i\0"
	.byte	0xf9
	.byte	0x16
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.quad	.LVL4
	.long	0x583
	.byte	0
	.uleb128 0x21
	.long	0x62
	.long	0x8bb
	.uleb128 0x22
	.long	0x7e
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.ascii "eval_binop\0"
	.byte	0x62
	.long	0x3e2
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x956
	.uleb128 0x5
	.ascii "op\0"
	.byte	0x62
	.byte	0x25
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.ascii "left\0"
	.byte	0x62
	.byte	0x2f
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.ascii "right\0"
	.byte	0x62
	.byte	0x3b
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.ascii "l\0"
	.byte	0x63
	.byte	0xc
	.long	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.ascii "r\0"
	.byte	0x63
	.byte	0x13
	.long	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.ascii "is_float\0"
	.byte	0x64
	.byte	0x9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.quad	.LVL1
	.long	0x583
	.uleb128 0xc
	.quad	.LVL2
	.long	0x583
	.byte	0
	.uleb128 0xe
	.ascii "is_truthy\0"
	.byte	0x57
	.byte	0xc
	.long	0xbf
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x98a
	.uleb128 0x5
	.ascii "v\0"
	.byte	0x57
	.byte	0x1c
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.ascii "print_value\0"
	.byte	0x1
	.byte	0x4c
	.byte	0xd
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x9bd
	.uleb128 0x5
	.ascii "v\0"
	.byte	0x4c
	.byte	0x1f
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.ascii "env_free\0"
	.byte	0x42
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0b
	.uleb128 0x5
	.ascii "env\0"
	.byte	0x42
	.byte	0x1c
	.long	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1
	.ascii "i\0"
	.byte	0x43
	.byte	0xe
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.ascii "env_get\0"
	.byte	0x39
	.byte	0x7
	.long	0x3e2
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0xa71
	.uleb128 0x5
	.ascii "env\0"
	.byte	0x39
	.byte	0x1c
	.long	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.ascii "name\0"
	.byte	0x39
	.byte	0x2d
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.secrel32	.LLRL0
	.long	0xa63
	.uleb128 0x1
	.ascii "i\0"
	.byte	0x3a
	.byte	0xe
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.quad	.LVL0
	.long	0x583
	.byte	0
	.uleb128 0x17
	.ascii "env_set\0"
	.byte	0x26
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0xadd
	.uleb128 0x5
	.ascii "env\0"
	.byte	0x26
	.byte	0x1b
	.long	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.ascii "name\0"
	.byte	0x26
	.byte	0x2c
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.ascii "value\0"
	.byte	0x26
	.byte	0x38
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1
	.ascii "i\0"
	.byte	0x27
	.byte	0xe
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x11
	.ascii "env_create\0"
	.byte	0x1e
	.byte	0xe
	.long	0x66f
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0xb14
	.uleb128 0x1
	.ascii "env\0"
	.byte	0x1f
	.byte	0x12
	.long	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.ascii "make_null\0"
	.byte	0x1a
	.byte	0xe
	.long	0x3e2
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0xb48
	.uleb128 0x1
	.ascii "v\0"
	.byte	0x1b
	.byte	0xb
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.ascii "make_bool\0"
	.byte	0x17
	.byte	0xe
	.long	0x3e2
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0xb88
	.uleb128 0x5
	.ascii "b\0"
	.byte	0x17
	.byte	0x1c
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ascii "v\0"
	.byte	0x18
	.byte	0xb
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.ascii "make_string\0"
	.byte	0x14
	.long	0x3e2
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc9
	.uleb128 0x5
	.ascii "s\0"
	.byte	0x14
	.byte	0x26
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ascii "v\0"
	.byte	0x15
	.byte	0xb
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.ascii "make_float\0"
	.byte	0x11
	.byte	0xe
	.long	0x3e2
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0xc0a
	.uleb128 0x5
	.ascii "f\0"
	.byte	0x11
	.byte	0x20
	.long	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ascii "v\0"
	.byte	0x12
	.byte	0xb
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "make_int\0"
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.long	0x3e2
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.ascii "i\0"
	.byte	0xe
	.byte	0x1b
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ascii "v\0"
	.byte	0xf
	.byte	0xb
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.section	.debug_rnglists,"dr"
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.word	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "D:\\brainrotgenz compiler\0"
.LASF0:
	.ascii "src/evaluator.c\0"
	.ident	"GCC: (Rev11, Built by MSYS2 project) 15.2.0"
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	strchr;	.scl	2;	.type	32;	.endef
	.def	atof;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	strcspn;	.scl	2;	.type	32;	.endef
