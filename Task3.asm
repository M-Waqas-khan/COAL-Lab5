.model small
.stack 100h
.data
var1 DB 23 ; First variable
var2 DB 65 ; Second variable

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al,var1
    mov bl,var2
    
    mov var1,bl
    mov var2,al

    ; Exit the program
    mov ah, 4ch
    int 21h
main endp
end main