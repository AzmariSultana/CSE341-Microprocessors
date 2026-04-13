.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
   A DB 2
    

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

    
    MOV AL, A
    ADD AL, 1
    NEG AL 
    MOV A, AL
    
    

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
