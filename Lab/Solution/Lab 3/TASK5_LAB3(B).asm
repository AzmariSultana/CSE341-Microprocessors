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
;Write a program to display the extended ASCII characters (ASCII codes 80h to FFh). Display 10 characters per line, separated by blanks. Stop after the
;extended characters have been displayed once.

MOV DL,80H  
MOV CX,0

PRINT:
CMP DL, 0FFH
JGE EXIT 
MOV BL,DL

MOV DL,BL
MOV AH,2 
INT 21H 

MOV DL,' '
MOV AH,2
INT 21H

INC CX
CMP CX,10
JL SKIP

MOV DL,0DH
MOV AH,2
INT 21H

MOV DL,0AH
MOV AH,2
INT 21H

MOV CX,0

SKIP:
MOV DL,BL
INC DL
JMP PRINT


;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN                     