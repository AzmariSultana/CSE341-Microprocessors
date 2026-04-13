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
;Write an assembly program that takes an integer input from the user (ranging
;from 1 to 9) and uses nested loops to generate the following pattern, where the
;number of rows corresponds to the user's input:

MOV AH,1
INT 21H 
MOV BH, AL
ADD BH,1
SUB BH,30H  

MOV BL,1

START:
CMP BL,BH   
JE EXIT
INC BL

MOV AH,2
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H 

MOV CL,1

OUTPUT:
CMP CL,BL 
JE START
MOV DL,CL
ADD DL, 30H
MOV AH,2
INT 21H 
INC CL
JMP OUTPUT
         
JMP START 

;exit to DOS
EXIT:
MAIN ENDP
    END MAIN
