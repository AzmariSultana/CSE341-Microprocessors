.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

STR1 DW "How many days did you work out? $" 
STR2 DW "TOTAL REWARD POINTS: $"


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  

LEA DX,STR1
MOV AH,9
INT 21H 

MOV AH,1
INT 21H
SUB AL,48

MOV DL,AL

MOV AL,2
MOV BL,2

WHILE:
DEC DL
CMP DL,0 
JE OUTPUT 
ADD AL, 2
ADD BL,AL 
JMP WHILE

OUTPUT:
LEA DX,STR2
MOV AH,9
INT 21H

MOV AX,BX
MOV BL,10
DIV BL 

MOV CL,AH
MOV DL,AL
ADD DL,48
MOV AH,2
INT 21H

MOV DL,CL
ADD DL,48
MOV AH,2
INT 21H

;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN