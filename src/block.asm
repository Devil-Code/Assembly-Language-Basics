.model small
.data 
	x db 01h,02h,03h,04h,05h 
.code 
start: 	mov ax,@data 
		mov ds,ax 
		mov cx,05h 
		lea si,x+04 
		lea di,x+04+03 
		
up: 	mov bl,[si] 
		mov [di],bl 
		dec si 
		dec di 
		dec cx 
		jnz up 
		mov ah,4ch 
		int 21h 
end start
