data segment
num1 dw 0eaeah
num2 dw 0fafah
res dw 0000h
nam db 'lovish'
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ax, num1
sub ax, num2
mov res,ax
int 03h
code ends
end start
end
