.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

X DB 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV SI, 0
MOV AH, 2

PRINTING:
CMP SI,14
JGE END  

CMP SI,9
JGE PRINT_TWO-DIGIT

MOV DL, X[SI] 
ADD DL, 30H
INT 21H
ADD SI,3     ;X=X+3
JMP PRINTING 

PRINT_TWO-DIGIT:
MOV AL, X[SI] ;DIVIDE INSIDE AX
MOV AH, 0
MOV CL, 10    
DIV CL        
MOV BH,AH

MOV DL,AL
ADD DL,30H
MOV AH,2
INT 21H

MOV DL,BH
ADD DL,30H
INT 21H
ADD SI,3

JMP PRINTING

END:
 

;exit to DOS
               
;MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
