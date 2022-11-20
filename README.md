# Basic-x86-Assembly-Language
you can directly run this programs into your CPU without OS.
This Programs can run only in x86 or x86_64 Architecture CPU's .


In Linux compile the asm files and convert it to bootable usb files using the following commands :

1. Go to the directory.
2. Open Terminal.
3. Then Type: nasm -f bin file_name.asm -o file_name.bin. ( give any name in the file_name.asm & file_name.bin )
4. Then you can see the new file named as file_name.bin. 
5. Then Plug your USB ( You can use SD card readers (or) USB devices ).
6. Then Type: lsblk ( In Your Terminal ).
7. You can see the Inserted USB (eg: /dev/sdb1 ).
8. Then Type: sudo dd if=file_name.bin of=/dev/sdb1.
9. Then Plug the USB to your Old System ( This only Works on BIOS ( Legacy ) Mode, not in UEFI Mode ).
10. Go to BIOS Setup and Enable USB Boot, Change Boot order ( Change your USB to priority 1 ), then Save the Changes.
11. Now you can see the Code Running Directly on your CPU without any OS.
