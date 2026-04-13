.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here 
STR1 DW "THE SUM OF $"
STR2 DW " AND $" 
STR3 DW " IS $"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;display them and their sum on the next line, with an appropriate message.

MOV AH,1
int 21H
MOV BL,AL

MOV AH,1
int 21H
MOV CL,AL

MOV AH,2
MOV DL, 0DH
int 21H
MOV DL,0AH
int 21H

LEA DX, STR1
MOV AH,9
int 21H

MOV DL,BL
MOV AH,2
int 21H
SUB BL,48

LEA DX, STR2
MOV AH,9
int 21H
 
MOV DL,CL
MOV AH,2
int 21H
SUB CL,48 


LEA DX,STR3
MOV AH,9
int 21H  

MOV AL,BL 
ADD AL,CL 
ADD AL,48
MOV BL,AL


MOV DL,BL 
MOV AH,2
int 21H

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
