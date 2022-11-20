mov AH, 0x0e
mov AL, 'A'
int 0x10 

loop:
         inc AL
         cmp AL, 'Z'+1
         je exit
         int 0x10
         jmp loop

exit:
         jmp $
         times 510-($-$$) db 0
         db 0x55, 0xaa