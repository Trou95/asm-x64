.global _start
.align 2

_start:
    MOV X20, #0

_loop_L1:
    ADD X20, X20, #1
    CMP X20, #10
    B.LE _printf_L
    B _exit_L


_printf_L:
    adr X0, fmt
    MOV X22, X20
    str X22, [sp]
    BL _printf
    B _loop_L1

_exit_L:
    MOV X16, #1
    SVC #0x80

fmt:
    .string "%d\n"

    
