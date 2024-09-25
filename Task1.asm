.model small
.stack 100h
.data
result DB 0 ; Declare a variable to store the result

.code
main proc
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Perform the arithmetic operations
    mov al, 3 ; Load the initial value into AL
    add al, 5 ; Add 5
    sub al, 2 ; Subtract 2
    sub al, 1 ; Subtract 1
    add al, 3 ; Add 3

    ; Convert the result to ASCII for printing
    mov result, al ; Store the result in the result variable
    add result, '0' ; Convert to ASCII

    ; Print the result
    mov dl, result ; Load the result into DL for printing
    mov ah, 2 ; Set the function code for printing a character
    int 21h ; Call the DOS interrupt to print the character

    ; Exit the program
    mov ah, 4ch ; Set the function code for exiting
    int 21h
main endp
end main