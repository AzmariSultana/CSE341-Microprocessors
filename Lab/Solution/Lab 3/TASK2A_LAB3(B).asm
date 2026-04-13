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
;Put the sum of 1 + 4 + 7+ .. + 148 in AX.

MOV DX,1

START:
CMP DX,149
JGE EXIT

ADD SUM,DX
ADD DX,3 
MOV AX,SUM
JMP START

;exit to DOS
EXIT:
             

MAIN ENDP
    END MAIN
