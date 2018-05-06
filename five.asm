data segment

array1 db 01h, 02h, 03h, 04h, 05h
array2 db 01h, 02h, 03h, 04h, 05h
array3 db 5 dup (00h)
string2 db " rish"
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
lea si, array1
lea di, array2
lea bx, array3
mov cl, 05h
l1:
mov al, [si]
add al, [di]
add [bx], al
inc si
inc di
inc bx
dec cl
jnz l1
int 03h
code ends
end start
end