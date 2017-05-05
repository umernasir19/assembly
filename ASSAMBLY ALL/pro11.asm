dosseg
.model small 
.stack 100h
.data
str3 db "Enter any String",10,13,"$"
str1 db 10 dup('$')
str2 db 10 dup('$')
.code
main proc 
mov ax,@data
mov ds,ax

xor ax,ax
mov ah,9
mov dx,offset str3
int 21h

mov si,offset str1
l1:
mov ah,1
int 21h

mov [si],al
inc si
cmp al,'.'
jne l1

mov di,offset str2
dec si
l2:
mov bl,[si]
mov [di],bl
inc di
dec si

cmp bl,'$'
jne l2

mov ah,2
mov dl,10
int 21h
mov ah,2
mov dl,13
int 21h

mov ah,9
lea dx,str1
int 21h

mov ah,2
mov dl,10
int 21h
mov ah,2
mov dl,13
int 21h

mov ah,9
lea dx,str2
int 21h

mov ah,4ch
int 21h

main endp
end main