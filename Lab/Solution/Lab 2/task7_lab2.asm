.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

STR1 DW "ENTER A HEX DIGIT:$"
STR2 DW "IN DECIMAL IT IS $"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Write a program to read one of the hex digits A-F, and display it on the next line in decimal.

LEA DX, STR1
MOV AH,9
int 21H

MOV AH,1   ;Read a character 
INT 21H
MOV BL, AL

MOV AH,2   
MOV DL,0DH
int 21H
MOV DL,0AH
int 21H

LEA DX, STR2
MOV AH,9
int 21H

SUB BL,55 ;FOR 'A-F'=55 & FOR '0-9'=48
MOV AX,BX
MOV DL, 10
DIV DL

MOV BL, AH
MOV DL,AL    ;QUOTIENT
ADD DL,48
MOV AH,2
int 21H 

MOV DL,BL   ;REMAINDER
ADD DL,48
MOV AH,2
int 21H


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
