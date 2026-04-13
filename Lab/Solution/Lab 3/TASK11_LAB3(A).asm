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
;Write a program that takes as input all sides of a triangle and check whether triangle is
;valid or not. If the sides form a triangle, print "Y", otherwise print "N".

MOV AH,1
INT 21H 
SUB AL,48
MOV BL,AL

MOV AH,1
INT 21H
SUB AL,48
MOV CL,AL

MOV AH,1
INT 21H
SUB AL,48

MOV DL,BL
ADD DL,CL  

CMP DL,AL
JG CON1
JMP CON2

CON1:
MOV DL,BL
ADD DL,AL

CMP DL,CL
JG CON3
JMP CON2

CON3:
MOV DL,CL
ADD DL,AL
CMP DL,BL
JG CON4
JMP EXIT

CON4:
MOV DL,89
MOV AH,2
INT 21H
JMP EXIT

CON2:
MOV DL,78
MOV AH,2
INT 21H

;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
