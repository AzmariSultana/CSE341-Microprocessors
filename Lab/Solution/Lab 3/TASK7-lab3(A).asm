.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
STR1 DW "EVEN$"
STR2 DW "ODD$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Write an assembly program to check whether a number is even or odd.

MOV AH,1
INT 21H
MOV DL,AL
MOV BL,2
DIV BL

CMP AH,0
JE DISPLAY  
CMP AH,1
JE DISPLAY1

DISPLAY:
LEA DX,STR1
MOV AH,9
INT 21H
JMP EXIT

DISPLAY1:
LEA DX,STR2
MOV AH,9
INT 21H 

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
