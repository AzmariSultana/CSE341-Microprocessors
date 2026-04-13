.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
STR1 DW "ENTER A HEX DIGIT: $"
STR2 DW "IN DECIMAL IT IS $"
STR3 DW "DO YOU WANT TO DO IT AGAIN? $"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 
;Write a program that will prompt the user to enter a hex digit character ("0" ... "9"
;or "A" ... "F"), display it on the next line in decimal, and ask the user if he or she
;wants to do it again. If the user types "y" or "Y", the program repeats; If the user
;types anything else, the program terminates. If the user enters an illegal
;character, prompt the user to try again.

PRINT:
LEA DX, STR1
MOV AH, 9
INT 21H

MOV AH, 1
INT 21H
MOV BL,AL

MOV AH,2   ;CARRIAGE RETURN
MOV DL,0DH
INT 21H
MOV DL,0AH ;LINE BREAK
INT 21H

CMP BL,48
JL EXIT
CMP BL, 57
JG CHR
JMP PRINTH

CHR:
CMP BL, 65
JL EXIT
CMP BL, 70
JG EXIT 
SUB BL,55
JMP PRINTD

PRINTH:
LEA DX, STR2
MOV AH, 9
INT 21H

MOV DL, BL
MOV AH, 2
INT 21H
JMP ASK

PRINTD: 
LEA DX, STR2
MOV AH, 9
INT 21H

MOV AX,BX
MOV BL,10
DIV BL

MOV CL,AH
MOV DL,AL
ADD DL,48
MOV AH,2
INT 21H

MOV DL,CL
ADD DL,48
MOV AH,2
INT 21H 

MOV AH,2   ;CARRIAGE RETURN
MOV DL,0DH
INT 21H
MOV DL,0AH ;LINE BREAK
INT 21H

ASK:
LEA DX, STR3
MOV AH, 9
INT 21H

MOV AH,1
INT 21H
MOV BL,AL

MOV AH,2   ;CARRIAGE RETURN
MOV DL,0DH
INT 21H
MOV DL,0AH ;LINE BREAK
INT 21H

CMP BL,89
JE PRINT
CMP BL,121
JE PRINT

;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN                     