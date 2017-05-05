;program that seperate the number using divide and stack
dosseg
.model small
.stack 100h
.code
main proc

mov ax,12345
mov bx,10
mov cx,0
l1:
mov dx,0
div bx
push dx
inc cx
cmp ax,0
jne l1
l2:
mov ah,2
pop dx
add dx,48;
int 21h
loop l2

mov ah,4ch
int 21h

main endp
end main 