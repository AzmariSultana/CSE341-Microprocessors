.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

X DB 5 DUP(?)

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Write an assembly program which creates an array of length 5. The program should take all the elements of the array as inputs from the user. Then it should find the sum of all the even elements of the array and print the result in the console. [All the input numbers will be single digit but the summation might be both single or double digit]


MOV CX, 5
MOV SI, 0

START:
MOV AH, 1
INT 21H  
SUB AL, 30H
MOV X[SI], AL
INC SI
LOOP START

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV CX, 5
MOV SI, 0 

MOV BX,0
MOV AX, 0

EVEN:
MOV AL,X[SI]
MOV BL,AL
MOV DL,2
DIV DL
INC SI
CMP AH,0 
JNE EVEN
ADD BH,BL
LOOP EVEN

MOV AX,0

MOV AL,BH 
MOV BH,10
DIV BH
MOV BH,AH

MOV DL,AL 
ADD DL, 30H
MOV AH,2
INT 21H

MOV DL,BH
ADD DL, 30H
MOV AH, 2
INT 21H

;exit to DOS
               
;MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
