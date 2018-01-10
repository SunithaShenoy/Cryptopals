section .data
msg  db "Factorial",10,0
msg1 db "Enter the Number:",10,0
input db "%d",0
result db "Factorial=%d",10,13,0
result1 db "Factorial = 1",10,13,0

section .bss
var resd 1

section .text
global main
extern scanf
extern printf

main:
push ebp
mov ebp,esp

push msg
call printf
add esp,4

push msg1
call printf
add esp,4

push var
push input
call scanf

mov eax,[var]
cmp eax,0
jnz loop1
push result1
call printf
add esp,12
jmp end

loop1:
mov eax,[var]
cmp eax,1
jne set
push eax
push result
call printf
add  esp,16
jmp  end
set:
mov ecx,[var]
mov eax,ecx
jmp loop
loop:
cmp ecx,1
jle fact
sub ecx,1
mul ecx
jmp loop
fact:
push eax
push result
call printf
add esp,16

end:
leave
ret

