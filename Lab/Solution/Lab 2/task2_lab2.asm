.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here 
STR DW "1st input:$" 
STR1 DW "2nd input:$"
STR2 DW "Addition:$"
STR3 DW "Subtraction:$"
STR4 DW "Multiplication:$"
STR5 DW "Division:$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Perform addition/subtraction/division/multiplication by taking inputs from the user.

LEA DX, STR
MOV AH, 9 
INT 21H

MOV AH, 1
INT 21H
MOV BL,AL
SUB BL, 48 

LEA DX, STR1
MOV AH, 9 
INT 21H 

MOV AH, 1
INT 21H
MOV CL,AL
SUB CL, 48
 
LEA DX, STR2
MOV AH, 9 
INT 21H

MOV AL,BL
ADD AL,CL
MOV DL,AL
ADD DL,48
MOV AH,2
INT 21H

LEA DX, STR3
MOV AH, 9 
INT 21H

MOV AL,BL
SUB AL,CL 
MOV DL,AL
ADD DL, 48
MOV AH,2
INT 21H

LEA DX, STR4
MOV AH, 9 
INT 21H

MOV AL,BL
MUL CL
MOV DL,10
DIV DL    ;when output is 2 digits, need to Divide
MOV DH,AH 
MOV DL,AL
ADD DL,48
MOV AH,2
INT 21H 

MOV DL,DH ;for remainder
ADD DL,48
MOV AH,2
INT 21H

LEA DX, STR5
MOV AH, 9 
INT 21H

MOV AX,BX
DIV CL
MOV DL,AL
ADD DL,48
MOV AH,2
INT 21H

 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
