; Addtion of two numbers by reading input from console
section .data
msg1   db "Enter first number:",10,13,0
msg2   db "Enter second number:",10,13,0
result db "Sum = %d",10,0
input1 db "%d",0
input2 db  "%d",0
section .bss
var1 resd 1
var2 resd 1
section .text
global main
extern printf
extern scanf
main:
  push ebp
  mov  ebp,esp
  
  push msg1
  call printf
  add  esp,4
  
  push var2
  push input1
  call scanf
  
  push msg2
  call printf
  add esp,4
  
  push var1
  push input2
  call scanf
  
  mov eax,[var1]   ;move the content of var1
  mov ebx,[var2]   ;move the content of var2
  add eax,ebx
  push eax
  push result
  call printf
  add esp,24
  pop ebp          ;restore stackframe
  ret


