.model small
.stack 100h
.data
	num1 db 04h
	num2 db 02h

.code
start:
mov ax,@data
mov ds,ax
mov al,num1
mov bl,num2
add al,bl
sub al,bl
mul bl
div bl
mov ah,4ch
int 21h
end start
