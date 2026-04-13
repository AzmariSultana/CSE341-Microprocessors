.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

A DB ?
NAME1 DB A DUP(?)

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Take input the length of the user’s name. Then, take the name as input, and then display.

MOV AH,1
INT 21H 
SUB AL,30H
MOV A,AL 

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

LEA SI,NAME1   ;INITIALIZE

MOV AH,1
MOV CL,A  
MOV CH,0

INPUT_LOOP:
INT 21H
MOV [SI],AL  ;MOV INPUT VAL(AL) IN SI
INC SI
LOOP INPUT_LOOP

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H
 
LEA SI,NAME1

MOV AH,2
MOV CL,A 
MOV CH,0

OUTPUT_LOOP:
MOV DL,[SI]
INT 21H
INC SI
LOOP OUTPUT_LOOP

;exit to DOS
               
;MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
