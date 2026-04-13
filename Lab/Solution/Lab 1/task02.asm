.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
    x DB 10  
    y DB 15

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
    
    MOV AX, 10
    MOV BX, 15
    MOV CX, AX
    MOV AX, BX
    MOV BX, CX



;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
