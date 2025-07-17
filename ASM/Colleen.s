section .data
c: db "section .data%1$cc: db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$c%4$cextern printf%1$c%4$cglobal main%1$c%1$c;useless comment outside%1$cfunc:%1$c%4$cret%1$c%1$cmain:%1$c%4$c;useless comment inside%1$c%4$cpush rbp%1$c%1$c%4$ccall func%1$c%4$cmov rdi, c%1$c%4$cmov rsi, 10%1$c%4$cmov rdx, 34%1$c%4$cmov rcx, c%1$c%4$cmov r8, 9%1$c%4$cxor rax, rax%1$c%4$ccall printf%1$c%1$c%4$cpop rbp%1$c%1$c%4$cmov rax, 0%1$c%4$cret%1$c", 0

section .text
	extern printf
	global main

;useless comment outside
func:
	ret

main:
	;useless comment inside
	push rbp

	call func
	mov rdi, c
	mov rsi, 10
	mov rdx, 34
	mov rcx, c
	mov r8, 9
	xor rax, rax
	call printf

	pop rbp

	mov rax, 0
	ret
