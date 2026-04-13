.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
X DB 8 
Y DB 4

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AL,X 
MOV AH,0
MOV BL,Y
DIV BL
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
