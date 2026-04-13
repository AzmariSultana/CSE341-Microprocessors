.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Store five numbers in a stack and find the sum while popping them.

MOV CX,5
MOV SI,0

START:
MOV AH,1
INT 21H
SUB AL,30H
MOV AH,0
PUSH AX
LOOP START

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV CX,5
MOV DX,0

SUM:
POP BX 
ADD DX,BX
LOOP SUM

MOV AX,DX
MOV DH,10
DIV DH
MOV BL,AH

MOV DL,AL
ADD DL,30H
MOV AH,2 
INT 21H

MOV DL,BL
ADD DL,30H 
MOV AH,2
INT 21H

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
