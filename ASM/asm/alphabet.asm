mov ah, 0x0e
mov al, 'A'
int 0x10

loop:
         dec al
         cmp al, 'Z'+1
         je end
         int 0x10
         jmp loop

end:
         jmp $
         times 510-($-$$) db 0
         db 0x55, 0xaa