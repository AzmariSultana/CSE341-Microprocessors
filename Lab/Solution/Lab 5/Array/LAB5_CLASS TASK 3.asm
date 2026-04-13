.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

NAME1 DB 6 DUP(?)

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;Use array to store the name (of fixed length) of the user as a sequence of characters.
;Then, display the name.

LEA SI,NAME1   ;INITIALIZE

MOV AH,1
MOV CX,6  ;6 LENGTH NAME

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
MOV CX,6

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
