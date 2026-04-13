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
;display a "?"

MOV DL,63
MOV AH,2
int 21H


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
