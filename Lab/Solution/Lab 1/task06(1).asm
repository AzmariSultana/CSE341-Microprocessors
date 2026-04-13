.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
   x DB 2
   y DB 3 
    

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

    
    MOV AL, x
    MOV BL, y
    SUB BL, AL
    MOV x, BL
    

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
