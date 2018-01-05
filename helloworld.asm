
; HelloWorld 32 bit assembly program 
; commands to 
; assemble: nasm -f elf HelloWorld.asm
; compile: gcc -m32 -o helloworld Helloworld.o
; run: ./helloworld

global main
extern printf

section .text

main:
push ebp
mov  ebp,esp
push message
call printf
add  esp , 4

leave
ret

message db "Hello World!!!", 10 , 0

