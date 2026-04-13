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
;Take an array of size 10 from user and print the elements in reverse order

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
MOV SI, 9

OUTPUT_LOOP: 
MOV DL,X[SI]
ADD DL,30H
MOV AH,2 
INT 21H
DEC SI
LOOP OUTPUT_LOOP


;exit to DOS
               
;MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
