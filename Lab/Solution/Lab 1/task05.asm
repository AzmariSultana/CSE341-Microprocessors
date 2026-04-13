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

    
    MOV AX, 2
    MOV BX, 3 
    ADD AX, BX
    SUB BX, AX
    ADD AX, BX
    NEG BX
   



;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
