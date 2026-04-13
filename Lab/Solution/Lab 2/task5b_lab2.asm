.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here 

STR1 DW "1st digit:$"
STR2 DW "2nd digit:$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;read two decimal digits whose sum is less than 10

LEA DX, STR1
MOV AH,9
int 21H
MOV AH,1 
int 21H

LEA DX, STR2
MOV AH,9
int 21H
MOV AH,1
int 21H
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
