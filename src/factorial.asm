.model small
.stack 100h
.data

 a db 05h

.code
 start: mov ax,@data
		mov ds,ax
		mov ah,00h
		mov al,a
		
l1:	dec a
	mul a
	mov cl,a
	mov cl,01h
	jnz l1
	mov ah,4ch
	int 21h
	
end start
