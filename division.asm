 ; Division of two two numbers
global main
extern printf

section .text

main:
mov edx, 0
mov eax, 250
mov ecx, 25
div ecx
push eax
push message 

call printf
add esp , 8
ret

message db "Value is = %d", 10 , 0
