%define NAME "Grace_kid.s", 0
%define CHAR "%%define NAME %1$cGrace_kid.s%1$c, 0%2$c%%define CHAR %1$c%3$s%1$c, 0%2$c%%macro FT 0%2$csection .data%2$cname: db NAME%2$cflag: db %1$cw%1$c, 0%2$cchar: db CHAR%2$c%2$csection .text%2$c%4$cglobal main%2$c%4$cextern fopen%2$c%4$cextern fclose%2$c%4$cextern fprintf%2$c%2$cmain:%2$c%4$cpush rbp%2$c%4$cpush rbx%2$c%4$csub rsp, 8%2$c%2$c%4$cmov rdi, name%2$c%4$cmov rsi, flag%2$c%4$cxor rax, rax%2$c%4$ccall fopen%2$c%2$c%4$ccmp rax, 0%2$c%4$cje return%2$c%2$c%4$cmov rbx, rax%2$c%4$cmov rdi, rax%2$c%4$cmov rsi, char%2$c%4$cmov rdx, 34%2$c%4$cmov rcx, 10%2$c%4$cmov r8, char%2$c%4$cmov r9, 9%2$c%4$ccall fprintf%2$c%2$c%4$cmov rdi, rbx%2$c%4$ccall fclose%2$c%2$c%4$cmov rax, 0%2$creturn:%2$c%4$cadd rsp, 8%2$c%4$cpop rbx%2$c%4$cpop rbp%2$c%4$cret%2$c%%endmacro%2$c;useless comment%2$cFT%2$c", 0
%macro FT 0
section .data
name: db NAME
flag: db "w", 0
char: db CHAR

section .text
	global main
	extern fopen
	extern fclose
	extern fprintf

main:
	push rbp
	push rbx
	sub rsp, 8

	mov rdi, name
	mov rsi, flag
	xor rax, rax
	call fopen

	cmp rax, 0
	je return

	mov rbx, rax
	mov rdi, rax
	mov rsi, char
	mov rdx, 34
	mov rcx, 10
	mov r8, char
	mov r9, 9
	call fprintf

	mov rdi, rbx
	call fclose

	mov rax, 0
return:
	add rsp, 8
	pop rbx
	pop rbp
	ret
%endmacro
;useless comment
FT
