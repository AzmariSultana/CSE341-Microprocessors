.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

STR1 DW "1ST DIGIT:$"
STR2 DW "2ND DIGIT:$"
STR3 DW "OUTPUT:$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
; Write a program that takes two multi digit decimal numbers as input and performs ADD
;operations between them.

LEA DX,STR1
MOV AH,9
INT 21H

MOV AH, 1
INT 21H
SUB AL, 48
MOV BL, 10
MUL BL
MOV BL, AL

MOV AH, 1
INT 21H
SUB AL, 48

ADD BL, AL

LEA DX,STR2
MOV AH,9
INT 21H

MOV AH, 1
INT 21H
SUB AL, 48
MOV CL, 10
MUL CL
MOV CL, AL

MOV AH, 1
INT 21H
SUB AL, 48

ADD CL, AL

ADD BL, CL

LEA DX, STR3
MOV AH, 9
INT 21H

MOV AX, BX
MOV BL, 10
DIV BL

MOV CL, AH
MOV DL, AL
ADD DL, 48
MOV AH, 2
INT 21H

MOV DL, CL
ADD DL, 48
MOV AH, 2
INT 21H


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
