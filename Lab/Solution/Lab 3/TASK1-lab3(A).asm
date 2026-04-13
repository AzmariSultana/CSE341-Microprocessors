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
;Take a number in AX, and if it's a negative number, replace it by 5.

MOV AX,-5

CMP AX,0
JL REPLACE
JMP EXIT

REPLACE:
MOV AX,5 

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
