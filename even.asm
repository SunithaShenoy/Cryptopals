
; Program to print even numbers between 1 to 100
extern printf
section .text

global main
main:
 mov ebx,0

nextNumber:
 inc ebx
 mov edx, 0
 mov eax,ebx
 mov ecx,2
 div ecx
 cmp edx,0
 jnz  print
 push ebx
 push result
 call printf
 add esp,8
 jmp  print

print:
 cmp  ebx,100
 jle  nextNumber
 ret

section .data
 result db "%d",10,0
