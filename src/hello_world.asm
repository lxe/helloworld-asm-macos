; https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master

global start

;;;;;;;;;;;;;;;;;
section .text
;;;;;;;;;;;;;;;;;

start:
    mov     rax, 0x2000004 ; "write" syscall to rax
    mov     rdi, 1         ; stdout to rdi
    mov     rsi, msg       ; message to rsi
    mov     rdx, msg.len   ; message length to rdx
    syscall                ; call

    mov     rax, 0x2000001 ; "exit" syscall to rax
    mov     rdi, 0         ; return value to rdi
    syscall                ; call

;;;;;;;;;;;;;;;;;
section .data
;;;;;;;;;;;;;;;;;

msg:    db      "Hello world", 10
.len:   equ     $ - msg    ; message length
