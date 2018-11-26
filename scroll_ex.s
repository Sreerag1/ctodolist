	.file	"scroll_ex.c"
	.text
	.globl	cdkscreen
	.bss
	.align 8
	.type	cdkscreen, @object
	.size	cdkscreen, 8
cdkscreen:
	.zero	8
	.comm	fp,8,8
	.section	.rodata
.LC0:
	.string	"%s%d"
	.text
	.type	newLabel, @function
newLabel:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	count.8053(%rip), %eax
	addl	$1, %eax
	movl	%eax, count.8053(%rip)
	movl	count.8053(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rsi
	leaq	result.8054(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	result.8054(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	newLabel, .-newLabel
	.section	.rodata
.LC1:
	.string	""
.LC2:
	.string	"Labele"
.LC3:
	.string	"Enter your list item"
.LC4:
	.string	"%s\n"
	.text
	.type	addItemCB, @function
addItemCB:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	cdkscreen(%rip), %rax
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	getString@PLT
	movq	%rax, -8(%rbp)
	movq	fp(%rip), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addCDKScrollItem@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	refreshCDKScreen@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	addItemCB, .-addItemCB
	.section	.rodata
.LC5:
	.string	"insert"
	.text
	.type	insItemCB, @function
insItemCB:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC5(%rip), %rdi
	call	newLabel
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	insertCDKScrollItem@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	refreshCDKScreen@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	insItemCB, .-insItemCB
	.type	delItemCB, @function
delItemCB:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getCDKScrollCurrent@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	deleteCDKScrollItem@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	refreshCDKScreen@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	delItemCB, .-delItemCB
	.section	.rodata
.LC6:
	.string	"Here's your todo list:"
.LC7:
	.string	"r"
.LC8:
	.string	"list.txt"
.LC9:
	.string	"a"
.LC10:
	.string	"cs:t:NSX:Y:H:W:"
.LC11:
	.string	"RIGHT"
	.align 8
.LC12:
	.string	"Cannot make scrolling list. Is the window too small?"
	.align 8
.LC13:
	.string	"<C>You hit escape. No file selected."
.LC14:
	.string	"<C>Press any key to continue."
	.align 8
.LC15:
	.string	"<C>You selected the following file"
.LC16:
	.string	"<C>%.*s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2520, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -2532(%rbp)
	movq	%rsi, -2544(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	$0, -2512(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -2504(%rbp)
	movl	$0, -2524(%rbp)
	movq	$0, -2496(%rbp)
	leaq	.LC7(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	fopen@PLT
	movq	%rax, fp(%rip)
	movq	fp(%rip), %rax
	testq	%rax, %rax
	je	.L10
	movq	fp(%rip), %rax
	leaq	-352(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	movl	%eax, -2528(%rbp)
	jmp	.L11
.L13:
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movl	-2524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-2496(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rcx, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-2524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-2496(%rbp), %rax
	addq	%rax, %rdx
	leaq	-352(%rbp), %rax
	movq	%rax, (%rdx)
	movq	fp(%rip), %rax
	leaq	-352(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	movl	%eax, -2528(%rbp)
.L11:
	cmpl	$-1, -2528(%rbp)
	je	.L12
	cmpl	$0, -2528(%rbp)
	jne	.L13
	jmp	.L12
.L10:
	leaq	.LC9(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	fopen@PLT
	movq	%rax, fp(%rip)
.L12:
	leaq	-2432(%rbp), %rdx
	movq	-2544(%rbp), %rsi
	movl	-2532(%rbp), %eax
	leaq	.LC10(%rip), %rcx
	movl	%eax, %edi
	call	CDKparseParams@PLT
	movl	$0, %edi
	call	initCDKScreen@PLT
	movq	%rax, cdkscreen(%rip)
	call	initCDKColor@PLT
	movl	$3, -2520(%rbp)
	leaq	-2432(%rbp), %rax
	movl	$0, %edx
	movl	$83, %esi
	movq	%rax, %rdi
	call	CDKparamValue@PLT
	movl	%eax, %r15d
	leaq	-2432(%rbp), %rax
	movl	$1, %edx
	movl	$78, %esi
	movq	%rax, %rdi
	call	CDKparamValue@PLT
	movl	%eax, %r14d
	leaq	-2432(%rbp), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	CDKparamNumber@PLT
	testl	%eax, %eax
	jne	.L14
	movl	-2520(%rbp), %r12d
	jmp	.L15
.L14:
	movl	$0, %r12d
.L15:
	leaq	-2432(%rbp), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	CDKparamNumber@PLT
	testl	%eax, %eax
	jne	.L16
	movq	-2496(%rbp), %rbx
	jmp	.L17
.L16:
	movl	$0, %ebx
.L17:
	movq	-2504(%rbp), %rdx
	leaq	-2432(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	CDKparamString2@PLT
	movq	%rax, %r13
	leaq	-2432(%rbp), %rax
	movl	$50, %edx
	movl	$87, %esi
	movq	%rax, %rdi
	call	CDKparamValue@PLT
	movl	%eax, -2536(%rbp)
	leaq	-2432(%rbp), %rax
	movl	$10, %edx
	movl	$72, %esi
	movq	%rax, %rdi
	call	CDKparamValue@PLT
	movl	%eax, -2548(%rbp)
	leaq	-2432(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movl	$115, %esi
	movq	%rax, %rdi
	call	CDKparamString2@PLT
	movq	%rax, %rdi
	call	CDKparsePosition@PLT
	movl	%eax, -2552(%rbp)
	leaq	-2432(%rbp), %rax
	movl	$9002, %edx
	movl	$89, %esi
	movq	%rax, %rdi
	call	CDKparamValue@PLT
	movl	%eax, -2556(%rbp)
	leaq	-2432(%rbp), %rax
	movl	$9002, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	CDKparamValue@PLT
	movl	%eax, %esi
	movq	cdkscreen(%rip), %rax
	subq	$8, %rsp
	pushq	%r15
	pushq	%r14
	pushq	$262144
	pushq	$1
	pushq	%r12
	pushq	%rbx
	pushq	%r13
	movl	-2536(%rbp), %r9d
	movl	-2548(%rbp), %r8d
	movl	-2552(%rbp), %ecx
	movl	-2556(%rbp), %edx
	movq	%rax, %rdi
	call	newCDKScroll@PLT
	addq	$64, %rsp
	movq	%rax, -2512(%rbp)
	cmpq	$0, -2512(%rbp)
	jne	.L18
	movq	cdkscreen(%rip), %rax
	movq	%rax, %rdi
	call	destroyCDKScreen@PLT
	call	endCDK@PLT
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L18:
	leaq	-2432(%rbp), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	CDKparamNumber@PLT
	testl	%eax, %eax
	je	.L19
	movl	-2520(%rbp), %edx
	movq	-2496(%rbp), %rsi
	movq	-2512(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	setCDKScrollItems@PLT
.L19:
	movq	-2512(%rbp), %rax
	movl	$0, %r8d
	leaq	addItemCB(%rip), %rcx
	movl	$97, %edx
	movq	%rax, %rsi
	movl	$21, %edi
	call	bindCDKObject@PLT
	movq	-2512(%rbp), %rax
	movl	$0, %r8d
	leaq	insItemCB(%rip), %rcx
	movl	$105, %edx
	movq	%rax, %rsi
	movl	$21, %edi
	call	bindCDKObject@PLT
	movq	-2512(%rbp), %rax
	movl	$0, %r8d
	leaq	delItemCB(%rip), %rcx
	movl	$100, %edx
	movq	%rax, %rsi
	movl	$21, %edi
	call	bindCDKObject@PLT
	movq	-2512(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	activateCDKScroll@PLT
	movl	%eax, -2516(%rbp)
	movq	-2512(%rbp), %rax
	movl	348(%rax), %eax
	cmpl	$1, %eax
	jne	.L20
	leaq	.LC13(%rip), %rax
	movq	%rax, -2480(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -2472(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -2464(%rbp)
	movq	cdkscreen(%rip), %rax
	leaq	-2480(%rbp), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	popupLabel@PLT
	jmp	.L21
.L20:
	movq	-2512(%rbp), %rax
	movl	348(%rax), %eax
	cmpl	$2, %eax
	jne	.L21
	movq	-2512(%rbp), %rax
	movq	256(%rax), %rax
	movl	-2516(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	chtype2Char@PLT
	movq	%rax, -2488(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -2480(%rbp)
	movq	-2488(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rcx
	movl	$236, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-320(%rbp), %rax
	movq	%rax, -2472(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -2464(%rbp)
	movq	cdkscreen(%rip), %rax
	leaq	-2480(%rbp), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	popupLabel@PLT
	movq	-2488(%rbp), %rax
	movq	%rax, %rdi
	call	freeChar@PLT
.L21:
	movq	-2496(%rbp), %rax
	movq	%rax, %rdi
	call	CDKfreeStrings@PLT
	movq	-2512(%rbp), %rax
	movq	%rax, %rdi
	call	_destroyCDKObject@PLT
	movq	cdkscreen(%rip), %rax
	movq	%rax, %rdi
	call	destroyCDKScreen@PLT
	call	endCDK@PLT
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.local	count.8053
	.comm	count.8053,4,4
	.local	result.8054
	.comm	result.8054,80,32
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
