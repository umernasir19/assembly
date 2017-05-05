;program to search character in string 
dosseg
.model small
.stack 100h
.data
str1 db 20 dup('$')
str2 db "enter a string$"
str3 db "enter a character $"
str4 db 10,13,"$"
str5 db "no of repeatation of this character in string =$"
str6 db "character not found$"

.code
main proc
mov ax,@data
mov ds,ax

mov cx,0
mov ah,9 
lea dx,str2 ;ENTER STRING
int 21h

mov ah,9
lea dx,str4 ;SPACES
int 21h

mov si,offset str1
l1:
mov ah,1
int 21h
mov [si],al
inc si
cmp al,"."
jne l1
dec si

mov ah,9
lea dx,str4 ;spaces
int 21h

mov ah,9
mov dx,offset str3 ;enter character
int 21h

mov ah,9
mov dx,offset str4 ;spaces
int 21h

mov ah,1
int 21h

mov si,offset str1
mov cx,0
l3:
mov bl,[si]
cmp bl,al
jne l2
inc cx
l2:
cmp bl,'.'
inc si
jne l3

mov ah,9
mov dx,offset str4
int 21h

cmp cx,0
je tem
jne found

tem:
mov ah,9
lea dx,str6
int 21h


jmp endd
found:
mov ah,9
mov dx,offset str5
int 21h
mov ah,2
add cx,48
mov dx,cx
int 21h
endd:
mov ah,4ch
int 21h

main endp
end main