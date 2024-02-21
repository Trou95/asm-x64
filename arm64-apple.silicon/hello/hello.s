.global _start
.align 2


_start:
    MOV     X0, #1
    adr     X1, str
    MOV     X2, #str_len
    MOV     X16, #4
    SVC     #0x80

    MOV     X3, #0
    MOV     X16, #1
    SVC     #0x80

str:      .ascii  "Hello\n"
.equ    str_len, .- str