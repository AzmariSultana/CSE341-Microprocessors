.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

STR DW "ENTER THREE INITIALS:$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;(a) prompt the user, (b) read first, middle, and last initials of a person's name, and then display
;them down the left margin. 


LEA DX, STR
MOV AH,9
int 21H

MOV AH,1     ;1ST INITIAL
INT 21H
MOV BL, AL

MOV AH, 1    ;2ND INITIAL
INT 21H
MOV CL, AL

MOV AH, 1     ;3RD INITIAL
INT 21H
MOV CH, AL

MOV AH, 2     ;CARRIAGE RETURN
MOV DL, 0DH
INT 21H
MOV DL, 0AH    ;NEW LINE
INT 21H

MOV DL, BL   ;1ST OUTPT
MOV AH, 2
INT 21H

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H

MOV DL, CL   ;2ND OUTPUT
MOV AH, 2
INT 21H

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H

MOV DL, CH     ;3RD OUTPUT
MOV AH, 2
INT 21H

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
