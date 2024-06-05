.model small
.stack 100h
.data
	num1 dw 0020h
	num2 dw 0028h
	gcd dw ?

.code
start:
mov ax,@data
mov ds,ax
mov ax,num1
mov bx,num2

UP: cmp ax,bx
	je EXIT
	jb EXCG
	
UP1:mov dx,0h
	div bx
	cmp dx,0
	je EXIT
	mov ax,dx
	jmp UP
	

EXCG: XCHG ax,bx
	  jmp UP1
	  
EXIT: mov gcd,bx
	  mov ah,4ch
	  int 21h
	  
end start