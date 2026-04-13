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
;Read an uppercase letter (omit error checking), and display it at the next position on the
;same line in lower case.

MOV AH,1
int 21H 
ADD AL,1 
MOV BL,AL
ADD BL,32 
MOV DL,BL
MOV AH,2
int 21H

 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
