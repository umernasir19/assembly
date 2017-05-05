;program to print 0-50 nos
dosseg
.model small
.stack 100h
.code
main proc
mov cx,0
l1:
mov ah,2
mov dx,cx
add dx,48
int 21h
inc cx
cmp cx,10
jne l1

mov ah,4ch
int 21h

main endp
end main 