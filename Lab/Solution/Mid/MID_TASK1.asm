.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
SUM DW 0

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AX,120 
MOV DX,AX
MOV BX,400

START:
CMP DX, BX
JG STORE
MOV AX,DX
MOV CL,2
DIV CL

CMP AH,0
JE SUM1
INC DX
JMP START

SUM1:
ADD SUM,DX 
INC DX
JMP START 

STORE:
MOV DX,SUM


;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
