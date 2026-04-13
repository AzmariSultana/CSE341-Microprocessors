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
;Read a character, and if it's an uppercase letter, display it.

MOV AH,1
INT 21H
MOV DL,AL

CMP AL,65
JGE DISPLAY  

DISPLAY:
CMP AL,90
JG EXIT 
MOV AH,2
INT 21H

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
