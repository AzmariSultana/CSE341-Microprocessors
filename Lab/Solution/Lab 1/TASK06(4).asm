.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
A DB 2 
B DB 5

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AL,A
DEC AL
MOV BL,B
SUB BL,AL
MOV A,BL
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
