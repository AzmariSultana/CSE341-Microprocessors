.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
   X DB 2
   Y DB 3 
   Z DB 2
    

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

        MOV AL, X
        MOV BL, Y
        MUL BL
        MOV CL, Z
        DIV CL
           

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
