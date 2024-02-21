
.global _start
.align 2

_start:
    MOV     X0, #42
    ADD     X0, X0, #1
    MOV     X16, #1
    svc     #0x80
