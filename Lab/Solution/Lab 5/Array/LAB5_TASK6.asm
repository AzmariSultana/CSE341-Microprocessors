.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

X DB 5 DUP(?)
Y DB 5 DUP(?)
Z DB 5 DUP(?)

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Take two arrays of size 5. Then add the first element of the first array with the last
;element of the second array, then the second element of the first array with the second-last
;element of the second array and so on. Store the results of each of the addition operations
;between the two arrays in a third array in a sequential manner and print the third array

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

START1:
MOV AH, 1
INT 21H  
SUB AL, 30H
MOV Y[SI], AL
INC SI
LOOP START1 

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV CX, 5
MOV SI, 0 

SUM:
MOV BL,X[SI]
MOV DX, SI
MOV AX, 4
SUB AX, SI
MOV SI, AX
ADD BL, Y[SI]
MOV SI, DX
MOV Z[SI], BL
INC SI
LOOP SUM 

MOV CX, 5
MOV SI, 0

PRINT:
MOV DL, Z[SI]
ADD DL, 30H
MOV AH, 2
INT 21H
INC SI
LOOP PRINT

;exit to DOS
               
;MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
