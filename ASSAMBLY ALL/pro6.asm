;program that divide 2 digits and print them with a message 
dosseg
.model small 
.data 
msg db "quotient is $"
msg2 db "reminder is $"
val db ?

.stack 100h
.code
main proc
mov ax,@data
mov ds,ax
int 21h

xor ax,ax
mov al,5
mov bl,2
div bl
mov bh,ah
mov bl,al
lea dx,msg
mov ah,9
int 21h
mov dl,bl
add dl,48
mov ah,2
int 21h

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

mov dx,offset msg2
mov ah,9
int 21h

mov dl,bh
add dl,48
mov ah,2
int 21h

mov ah,4ch
int 21h
main endp
end main
