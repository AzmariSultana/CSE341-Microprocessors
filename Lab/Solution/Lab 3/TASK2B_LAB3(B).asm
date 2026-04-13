.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here 

SUM DW 0

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Put the sum 100 + 95 + 90 + ... + 5 in a variable 'sum'.

MOV DX,100

START:
CMP DX,5
JL EXIT
ADD SUM,DX
SUB DX,5
JMP START

;exit to DOS
EXIT:   

MOV AX,4C00H
INT 21H              

MAIN ENDP
    END MAIN
