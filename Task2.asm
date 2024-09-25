.model small
.stack 100h
.data
num1 DB 2
num2 DB 4
num3 DB 1
result DW 0 ; Use a word (16 bits) for the result

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Load the numbers into registers and perform addition
    mov al, num1
    add al, num2
    add al, num3

    ; Store the result in the result variable
    mov result, ax

    ; Convert the result to ASCII for printing
    mov ax, result
    add al, '0'

    ; Print the result
    mov dl, al
    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main