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
;Swap two numbers using only push and pop instructions.

MOV CX,5
MOV DX,6

MOV AX,CX
PUSH AX
MOV AX,DX
PUSH AX
POP BX
MOV CX,BX
POP BX
MOV DX,BX
 
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
