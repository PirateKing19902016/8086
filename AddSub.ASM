data segment
num1 dw 0eaeah
num2 dw 0fafah
res1 dw 0000h
res2 dw 0000h
nam db 'rish'
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ax, num1
add ax, num2
mov res1,ax
sub ax, num2
sub ax, num2
mov res2,ax
int 03h
code ends
end start
end
