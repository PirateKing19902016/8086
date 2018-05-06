data segment
string1 db 73h, 22h,98h,0BDh,55h
string2 db "loke"
data ends
code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ch, 04h
up2:mov cl, 04h
lea si, string1
up1:mov al, [si]
mov bl, [si+1]
cmp al, bl
jnc down
mov dl, [si+1]
xchg[si], dl
mov[si+1], dl
down: inc si
dec cl
jnz up1
dec ch
jnz up2
int 03h
code ends
end start
end