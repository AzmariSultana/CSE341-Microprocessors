.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
SUM1 DW 0
SUM2 DW 0

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
;From a sequence of natural numbers 1, 2, 3, 4, ........, 100 add all those
;numbers that are divisible by the last non zero digit of your student ID and put the
;summation in a variable M. Add the other numbers that are not divisible by that
;digit and put the summation in another variable N.

MOV DL, 1
MOV BX, 0

START:
CMP DL, 51
JE OUTPUT

MOV AX, DX
MOV CL, 9
DIV CL

CMP AH, 0
JNE NSUM
JE MSUM

MSUM:
ADD SUM1, DX
INC DL
JMP START

NSUM:                              
ADD SUM2, DX
INC DL
JMP START                

OUTPUT:
MOV AX, SUM1
MOV CL, 100
DIV CL
MOV BL, AH

MOV DL, AL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV AX,BX
MOV CL, 10
DIV CL
MOV BL, AH

MOV DL, AL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV DL, BL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV AH,2
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H

MOV DX, 0
MOV AX, SUM2
MOV CX, 1000
DIV CX
MOV BX, DX

MOV DL, AL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV AX, BX
MOV CL, 100
DIV CL
MOV BL, AH

MOV DL, AL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV AX,BX
MOV CL, 10
DIV CL
MOV BL, AH

MOV DL, AL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV DL, BL
ADD DL, 30H
MOV AH, 2
INT 21H



 




 

;exit to DOS



MAIN ENDP
    END MAIN
