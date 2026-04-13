.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

STR1 DW "Enter Ticket Amount: Tk $" 
STR2 DW "PARKING ALLOWED. Return change. $"
STR3 DW "Insufficient amount. Please insert more. $"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  

LEA DX,STR1
MOV AH,9
INT 21H 

MOV AH,1
INT 21H
SUB AL,48
MOV BL,10
MUL BL
MOV BL,AL

MOV AH,1
INT 21H
SUB AL,48

ADD BL,AL

CMP BL,55
JGE PRINT1
JL PRINT2

PRINT1:
LEA DX,STR2
MOV AH,9
INT 21H
JMP EXIT 

PRINT2: 
LEA DX,STR3
MOV AH,9
INT 21H


;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
