data segment
num1 db 02h
num2 db 08h
res dw 00h
nam db 'rish'
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ah, 00h
mov al, num1
mul num2
mov res,ax
int 03h
code ends
end start
end
