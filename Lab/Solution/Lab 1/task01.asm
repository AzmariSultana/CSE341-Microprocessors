.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
    x DB 10

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  

    MOV AX, 10
    MOV BX, AX



;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
