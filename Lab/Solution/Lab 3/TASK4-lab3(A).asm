.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
STR1 DW "o$" 
STR2 DW "e$" 

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;If AL contains 1 or 3, display 'o'; if AL contains 2 or 4 display "e".

MOV AL,3

CMP AL,1
JE PRINTo
CMP AL,3
JE PRINTo
JMP EVEN

PRINTo:
;LEA DX,STR1  (ANOTHER APPROACH)
;MOV AH,9
;INT 21H
MOV DL,111
MOV AH,2
INT 21H

EVEN:
CMP AL,2
JE PRINTe
CMP AL,4
JE PRINTe
JMP EXIT

PRINTe:
LEA DX,STR2
MOV AH,9
INT 21H

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
