[org 0x7c00]
mov AH, 0x0e
mov BX, varname


printStr:
         mov AL, [bx]
         cmp al, 0
         je end
         int 0x10
         inc bx
         jmp printStr
end:

jmp $

varname:
         DB "Data SEGMENT HERE ! ", 0

times 510-($-$$) db 0
dw 0xaa55

