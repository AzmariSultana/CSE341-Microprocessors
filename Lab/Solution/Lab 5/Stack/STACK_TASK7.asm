.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here 

X DB 5 DUP(?)
A DB "PALINDROME$"
B DB "NOT PALINDROME$"  

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Input a word and check whether the word is a palindrome or not.

MOV CX,5
MOV SI,0

LOOP_START: 
MOV AH,1
INT 21H
SUB AL,30H  
MOV X[SI],AL
INC SI
MOV AH,0
PUSH AX
LOOP LOOP_START

MOV AH,2
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H

MOV CX,5 
MOV SI,0
MOV DX,0 

COMPARE:
POP BX 
MOV DL,X[SI] 
INC SI
CMP BX,DX
JNE NOT_PALINDROME 
LOOP COMPARE 

LEA DX,A
MOV AH,9
INT 21H 
JMP EXIT

NOT_PALINDROME:
LEA DX,B
MOV AH,9
INT 21H

;exit to DOS
EXIT:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
