section .data
msg db "Fibinocci Series",10,0
msg1 db "Enter the limit:",0
input db "%d",0
series db "%d",10,0

section .bss
var resd 1

section .text
global main
extern printf
extern scanf

main:
 push msg
 call printf
 add esp,4
 push msg1
 call printf
 add esp,4

 push var
 push input
 call scanf
 add esp,8

 xor  eax,eax           ; mov eax = 0
 xor  ebx,ebx           ; mov ebx = 0
 inc  ebx               ; set ebx = 1
 mov  ecx,[var]         ; set ecx = limit

loop:
 push ecx               ;push the value of reg. ecx into the stack
 push ebx               ;push the value of reg. ebx into the stack
 push eax               ;push the value of reg. eax into the stack

 push eax               ;push first value into the stack
 push series            ;push the variable into the stack
 call printf            ;print the first number in the series
 add esp,8              ;Remove the  8 byte allocated space

 pop eax                ;pop the value from the stack
 pop ebx                ;pop the value from the stack
 pop ecx                ;pop the value from the stack

 mov  edx,eax           ;copy the value of eax to edx.Register edx is used as a temperory register.
 mov  eax,ebx           ;copy the value of ebx to eax
 mov  ebx,edx           ;copy the value of edx to ebx
 add  eax,ebx           ;add content of eax with ebx
 dec  ecx               ;decrement the value of ecx
 jnz  loop              ;jmp not zero to label: loop

 ret                    ;return
