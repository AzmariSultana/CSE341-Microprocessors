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
;If AX contains a negative number, put -1 in BX; if AX contains 0, put 0 In BX; if AX
;contains a positive number, put 1 in BX.

MOV AX,0
CMP AX,0
JL CON1
JE EQUAL
JG CON2
JMP EXIT

CON1:
MOV BX,-1 
JMP EXIT

CON2:
MOV BX,1
JMP EXIT

EQUAL:
MOV BX,0

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
