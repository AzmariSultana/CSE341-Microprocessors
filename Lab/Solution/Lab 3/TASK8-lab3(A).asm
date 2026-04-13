.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
STR1 DW "VOWEL$"
STR2 DW "CONSONANT$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Write a program to input any alphabet and check whether it is vowel or consonant.

MOV AH,1
INT 21H
MOV DL,AL

CMP AL,65
JE DISPLAY  
CMP AL,69
JE DISPLAY
CMP AL,73
JE DISPLAY  
CMP AL,79
JE DISPLAY
CMP AL,83
JE DISPLAY  
CMP AL,97
JE DISPLAY
CMP AL,101
JE DISPLAY  
CMP AL,105
JE DISPLAY
CMP AL,111
JE DISPLAY  
CMP AL,117
JE DISPLAY
JMP DISPLAY1

DISPLAY:
LEA DX,STR1
MOV AH,9
INT 21H
JMP EXIT

DISPLAY1:
LEA DX,STR2
MOV AH,9
INT 21H 

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
