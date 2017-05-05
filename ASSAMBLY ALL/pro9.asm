;program that take string input 
dosseg
.model small
.data
str1 db 10 dup("$")
.code
main proc 
mov ax,@data
mov ds,ax

mov si,offset str1
mov ax,0
l1:
mov ah,1
int 21h
mov [si],al
inc si
cmp al,'.'
jne l1
mov si,offset str1
l2:
mov ah,2
mov dl,[si]
int 21h
inc si
cmp dl,'.'
jne l2

mov ah,4ch
int 21h

main endp 
end main