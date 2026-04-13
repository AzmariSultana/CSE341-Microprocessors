.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
A DB 2 
B DB 3
C DB ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AL,A
MOV BL,B
INC BL
ADD AL,BL
MOV CL,AL
MOV C,CL
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
