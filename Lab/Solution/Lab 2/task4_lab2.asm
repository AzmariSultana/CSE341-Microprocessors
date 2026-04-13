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
;Read an uppercase letter (omit error checking), and display it at the next position on the next
;line in lower case.

MOV AH,1
int 21H 
ADD AL,1 
MOV BL,AL
ADD BL,32 
MOV AH,2
MOV DL, 0DH
int 21H
MOV DL,0AH
int 21H 
MOV DL,BL
MOV AH,2
int 21H

 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
