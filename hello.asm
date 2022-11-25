; ----------------------------------------------------------------------------
; helloworld.asm
;
; This is a Win32 console program that writes "Hello, World" on one line and
; then exits.  It needs to be linked with a C library.
; ----------------------------------------------------------------------------

    global  _main
    extern  _printf

    section .text
_main:
    push    message
    call    _printf
    add     esp, 4
    ret
message:
    db  'Hello, World', 10, 0


nasm -fwin32 helloworld.asm
gcc helloworld.obj
a


org 100h
mov dx,msg
mov ah,9
int 21h
mov ah,4Ch
int 21h
msg db 'Hello, World!',0Dh,0Ah,'$'


