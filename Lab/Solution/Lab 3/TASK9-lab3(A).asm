.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
STR1 DW "DIVISIBLE$"
STR2 DW "NOT DIVISIBLE$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Write a program to check whether a number is divisible by 5 and 11 or not.

MOV AH,1
INT 21H
SUB AL,48
MOV BL,10
MUL BL
MOV BL,AL
MOV AH,1
INT 21H
SUB AL,48
ADD BL,AL
MOV AX,BX
MOV CL,5
DIV CL

CMP AH,0
JE DISPLAY1
JMP PRINT2

DISPLAY1:
MOV AX,BX 
MOV CL,11
DIV CL 
CMP AH,0
JE PRINT 
JMP PRINT2

PRINT:
LEA DX,STR1
MOV AH,9
INT 21H
JMP EXIT

PRINT2:
LEA DX,STR2
MOV AH,9
INT 21H 

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
