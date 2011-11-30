	.file	"JavaletteStdLib.c"
	.section .rdata,"dr"
LC0:
	.ascii "%d \12\0"
	.text
.globl _printInt
	.def	_printInt;	.scl	2;	.type	32;	.endef
_printInt:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leave
	ret
	.section .rdata,"dr"
LC1:
	.ascii "%.1f \12\0"
	.text
.globl _printDouble
	.def	_printDouble;	.scl	2;	.type	32;	.endef
_printDouble:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	leave
	ret
.globl _printString
	.def	_printString;	.scl	2;	.type	32;	.endef
_printString:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_puts
	leave
	ret
	.section .rdata,"dr"
LC3:
	.ascii "%d\0"
	.text
.globl _readInt
	.def	_readInt;	.scl	2;	.type	32;	.endef
_readInt:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_scanf
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC4:
	.ascii "%lf\0"
	.text
.globl _readDouble
	.def	_readDouble;	.scl	2;	.type	32;	.endef
_readDouble:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_scanf
	fldl	-16(%ebp)
	leave
	ret
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
