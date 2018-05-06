data segment
num1 db 0eah
num2 db 0fah
res db 00h
nam db 'rish'
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ah, 00h
mov al, num1
add al, num2
mov res,al
int 03h
code ends
end start
end
