section .data
    screen db 0x13 ; Video mode 0x13 is 320x200 256-color mode

section .text
    global _start

_start:
    ; Set video mode
    mov ah, 0x00
    mov al, [screen]
    int 0x10

    ; Get the number of pixels on the screen
    mov bx, 320 ; Number of pixels in a row
    mov cx, 200 ; Number of rows
    imul bx, cx ; Total number of pixels

    ; Set all pixels to black
    mov ah, 0x0C ; Set the video memory write function
    mov al, 0x00 ; Color code for black
    mov cx, bx
    xor di, di ; Destination index, initially 0
    cld ; Clear the direction flag
    rep stosb ; Fill video memory with the specified color
    
    ; Halt the program
    mov ah, 0x4C
    xor al, al
    int 0x21
