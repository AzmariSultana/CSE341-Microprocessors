.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

A DB "CHARACTER FOUND $"
B DB " TIME(S)$"
X DB "bahai"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Write an assembly program that checks whether a character exists in a character array or not using procedure. You can declare and initialize the array inside your code, but the value to check must be taken as an input from the user. If the procedure finds the desired character it will print "Character found x time(s)" in the console where x is the number of times the character is present in the array, and "Character not found" otherwise.

LEA SI, X

MOV AH,1
INT 21H

MOV CX,5
MOV SI,0
MOV BL,0

COUNT:
MOV DL, X[SI] 
INC SI
CMP AL,DL
JNE ODD
INC BL
LOOP COUNT

ODD:
LOOP COUNT

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

LEA DX,A
MOV AH,9
INT 21H

MOV DL,BL
ADD DL,30H
MOV AH,2
INT 21H 

LEA DX,B
MOV AH,9
INT 21H 

;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
