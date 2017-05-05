; case converter 
dosseg
.model small 
.stack 100h
.data
str1 db "Enter any character",10,13,"$"
str2 db "It is a capital letter its equvalent small letter is",10,13,"$"
str3 db "It is a small letter its equivalent capital letter is ",10,13,"$"
str4 db "error you dont enter any alphabat",10,13,"$"
.code
main proc 
mov ax,@data
mov ds,ax

mov ah,9
lea dx,str1
int 21h

mov ah,1
int 21h
mov bl,al

mov ah,2
mov dl,10
int 21h
mov ah,2
mov dl,13
int 21h

cmp bl,65
jae above
jb below

above:
cmp bl,90
jbe cap
ja other

other:
cmp bl,97
jae smcap
jb below

smcap:
cmp bl,122
jbe lett
ja below

lett:
mov ah,9
lea dx,str3
int 21h
sub bl,32
mov ah,2
mov dl,bl
int 21h
jmp endcase

cap:
mov ah,9
lea dx,str2
int 21h
add bl,32
mov ah,2
mov dl,bl
int 21h
jmp endcase

below:
mov ah,9
mov dx,offset str4
int 21h
jmp endcase

endcase:

mov ah,4ch
int 21h

main endp
end main