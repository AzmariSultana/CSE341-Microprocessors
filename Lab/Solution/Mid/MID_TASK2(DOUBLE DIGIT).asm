.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
AREA DW 0
P DW 3 
S DW 1 
R DW 1

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

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

MOV AH,2
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H

MOV AH,1
INT 21H  
SUB AL,48
MOV CL,10
MUL CL
MOV CL,AL

MOV AH,1  
INT 21H  
SUB AL,48

ADD CL,AL

MOV AL,BL
MUL BL
MOV S,AX

MOV AL,CL
MUL CL 
MOV R,AX
MOV CX,P
MUL CX 

SUB S,AX 
MOV DX,S
ADD DL,48
MOV AH,2
INT 21H

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
