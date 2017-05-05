;program that prints a single character 
dosseg
.model small
.code
main proc
mov dl,'0'
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
