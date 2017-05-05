;program with procedures that take input string and print it 
dosseg
.model small
.stack 100h
.data
str1 db 10 dup('$')
.code
my proc
push ax
push bx
push cx
push dx

mov ah,2
mov dl,10
int 21h

mov ah,2
mov dl,13
int 21h

pop dx
pop cx
pop bx
pop ax

ret
my endp
main proc
mov ax,@data
mov ds,ax

mov ax,0
mov si,offset str1
l1:
mov ah,1
int 21h
mov [si],al
inc si
cmp al,'$'
jne l1

call my
mov si,offset str1
xor dx,dx
l2:
mov dl,[si]
mov ah,2
int 21h


inc si
cmp dl,'$'
jne l2

mov ah,4ch
int 21h

main endp
end main
