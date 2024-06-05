.model small
.stack 100h
.data
	NUM1 DW 0005h
	NUM2 DW 0004h
	HCF DW ?
	LCM DW ?
.code
start:
MOV AX,@data
MOV DS,AX
MOV AX,NUM1
MOV BX,NUM2

W1:  MOV DX,0
     MOV CX,BX
     DIV BX
     MOV BX,DX
     MOV AX,CX
     CMP BX,0
     JNE W1
     MOV HCF,AX
     MOV CX,AX
     MOV AX,NUM1
     MOV BX,NUM2
     MUL BX
     DIV CX
     MOV LCM,AX
MOV AH,4CH
INT 21H
end start
