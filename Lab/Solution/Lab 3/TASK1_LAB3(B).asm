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
;Write an implicit loop to display a row of 80 stars.

MOV DL,42
MOV CX,80 

START:
MOV AH,2
INT 21H

LOOP START 

;exit to DOS
EXIT:
              
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
