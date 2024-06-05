.model small 
.stack 100h
.data
        array db 3h,2h,1h,5h,4h
.code 
start: 	mov ax,@data 
		mov ds,ax 
		mov ch,04H
		
loop1:	mov cl,04h 
		lea si,array
		
loop2:	mov bl,[si] 
		cmp bl,[si+1] 
		jnc j1 
		mov dl,[si+1] 
		xchg [si],dl 
		mov [si+1],dl 
		
j1:	inc si 
	dec cl 
	jnz loop2 
	dec ch 
	jnz loop1
	
lea si,array 
mov ch,05h
mov dl,[si] 
add dl,30h 
mov ah,02h 
int 21h
mov ah,4ch 
int 21h
end start
