section .data
file: db "Sully_%d", 0
sfile: db "Sully_%d.s", 0
flag: db "w", 0
cmd: db "nasm -f elf64 -dQUINE=1 %1$s.s -o %1$s.o && gcc -no-pie %1$s.o -o %1$s && rm %1$s.o && ./%1$s", 0
char: db "section .data%1$cfile: db %2$cSully_%%d%2$c, 0%1$csfile: db %2$cSully_%%d.s%2$c, 0%1$cflag: db %2$cw%2$c, 0%1$ccmd: db %2$cnasm -f elf64 -dQUINE=1 %%1$s.s -o %%1$s.o && gcc -no-pie %%1$s.o -o %%1$s && rm %%1$s.o && ./%%1$s%2$c, 0%1$cchar: db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal main%1$cextern fopen%1$cextern fprintf%1$cextern fclose%1$cextern malloc%1$cextern sprintf%1$cextern free%1$cextern system%1$c%1$cmain:%1$cpush rbp%1$cpush rbx%1$csub rsp, 8%1$cmov r15, %4$d%1$c%1$c%%ifndef QUINE%1$cadd r15, 1%1$c%%endif%1$ccmp r15, 0%1$cjle return%1$csub r15, 1%1$c%1$cmov rdi, 8%1$ccall malloc%1$cmov r14, rax%1$c%1$cmov rdi, r14%1$cmov rsi, file%1$cmov rdx, r15%1$ccall sprintf%1$c%1$cmov rdi, 10%1$ccall malloc%1$cmov r13, rax%1$c%1$cmov rdi, r13%1$cmov rsi, sfile%1$cmov rdx, r15%1$ccall sprintf%1$c%1$cmov rdi, r13%1$cmov rsi, flag%1$cxor rax, rax%1$ccall fopen%1$c%1$ccmp rax, 0%1$cje return%1$c%1$cmov rbx, rax%1$cmov rdi, rax%1$cmov rsi, char%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, char%1$cmov r9, r15%1$ccall fprintf%1$c%1$cmov rdi, rbx%1$ccall fclose%1$c%1$cmov rdi, 256%1$ccall malloc%1$cmov r12, rax%1$c%1$cmov rdi, r12%1$cmov rsi, cmd%1$cmov rdx, r14%1$ccall sprintf%1$c%1$cmov rdi, r12%1$ccall system%1$c%1$cmov rdi, r14%1$ccall free%1$cmov rdi, r13%1$ccall free%1$cmov rdi, r12%1$ccall free%1$c%1$cmov rax, 0%1$creturn:%1$cadd rsp, 8%1$cpop rbx%1$cpop rbp%1$cret%1$c", 0

section .text
global main
extern fopen
extern fprintf
extern fclose
extern malloc
extern sprintf
extern free
extern system

main:
push rbp
push rbx
sub rsp, 8
mov r15, 5

%ifndef QUINE
add r15, 1
%endif
cmp r15, 0
jle return
sub r15, 1

mov rdi, 8
call malloc
mov r14, rax

mov rdi, r14
mov rsi, file
mov rdx, r15
call sprintf

mov rdi, 10
call malloc
mov r13, rax

mov rdi, r13
mov rsi, sfile
mov rdx, r15
call sprintf

mov rdi, r13
mov rsi, flag
xor rax, rax
call fopen

cmp rax, 0
je return

mov rbx, rax
mov rdi, rax
mov rsi, char
mov rdx, 10
mov rcx, 34
mov r8, char
mov r9, r15
call fprintf

mov rdi, rbx
call fclose

mov rdi, 256
call malloc
mov r12, rax

mov rdi, r12
mov rsi, cmd
mov rdx, r14
call sprintf

mov rdi, r12
call system

mov rdi, r14
call free
mov rdi, r13
call free
mov rdi, r12
call free

mov rax, 0
return:
add rsp, 8
pop rbx
pop rbp
ret
