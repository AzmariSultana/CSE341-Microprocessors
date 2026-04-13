.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

X DB 10 DUP(?)

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Find the sum of the elements of a BYTE array of size 10 by taking input from user

MOV CX, 10
MOV SI, 0
START:
MOV AH, 1
INT 21H  
SUB AL, 30H
MOV X[SI], AL
INC SI
LOOP START

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV CX, 10
MOV SI, 0  
MOV AX, 0
SUM:
MOV BL, X[SI]
ADD AL, BL
INC SI
LOOP SUM

MOV CL, 10
DIV CL

MOV BH, AH

MOV DL, AL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV DL, BH
ADD DL, 30H
MOV AH, 2
INT 21H 

;exit to DOS
               
;MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
