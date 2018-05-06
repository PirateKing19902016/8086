data segment
num1 db 02h
num2 db 08h
res db 00h
nam db 'rish'
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ax, 0000h
mov bl, num1
mov cl, num2

loop:
add al, bl
dec cl
jnz loop
mov res,al
int 03h
code ends
end start
end
