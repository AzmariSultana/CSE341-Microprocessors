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
;Read a character. If it's "y" or "Y", display it; otherwise, terminate the program.

MOV AH,1
INT 21H
MOV DL,AL

CMP AL,121
JE DISPLAY  
CMP AL,89
JE DISPLAY
JMP EXIT

DISPLAY:
MOV AH,2
INT 21H

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
