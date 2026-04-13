.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
STR DW "PLEASE INSERT A CHARACTER:$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Take a character input and display it. Display the message "Please insert a character: " before
;taking an input. 

LEA DX, STR
MOV AH,9
INT 21H

MOV AH,1
INT 21H
MOV DL,AL
MOV AH,2
INT 21H


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
