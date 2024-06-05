.model small 
.data
strr db "yash" 
len equ $-strr 
rstr db 20 dup(0) 
msg1 db 10,13,"it is a palindrome $" 
msg2 db 10,13,"it is not a palindrome $" 
.code 
start: 	mov ax,@data 
		mov ds,ax 
		mov es,ax 
		mov si,offset strr 
		mov di,offset rstr 
		add di,len-1 
		mov cx,len 
		
back: 	mov al,[si] 
		mov[di],al
		inc si 
		dec di 
		loop back 
		mov si,offset strr 
		mov di,offset rstr
		mov cx,len 
		cld 
		repe cmpsb 
		jne down 
		lea dx,msg1 
		jmp down1 
		
down: 	lea dx,msg2 

down1: 	mov ah,09h 
		int 21h
                mov ah,4ch
		int 21h 
		
end start
