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
;Write a program that takes a digit as an input and outputs the following. If the digit is
;within 0-3, it prints 'i', If it's within 4-6, it prints 'K', If it's within 7-9, it prints 'l' and
;if it's 10, it prints 'm'.

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
MOV DL,BL

CMP DL,0
JGE CON1

CON1:
CMP DL,4
JGE CON2
JMP PRINT1

PRINT1:
MOV DL,105
MOV AH,2
INT 21H
JMP EXIT

CON2:
CMP DL,7
JGE CON3
JMP PRINT2

PRINT2:
MOV DL,107
MOV AH,2
INT 21H
JMP EXIT

CON3:
CMP DL,10
JL PRINT3 
JE PRINT4

PRINT3:
MOV DL,108
MOV AH,2
INT 21H 
JMP EXIT

PRINT4:
MOV DL,109
MOV AH,2
INT 21H 

;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
