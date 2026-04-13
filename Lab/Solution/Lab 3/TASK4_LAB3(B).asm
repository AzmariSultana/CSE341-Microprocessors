.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

PRODUCT DW 0 
M DW 5
N DW 3

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;The following algorithm may be used to carry out multiplication of two positive
;numbers M and N by repeated addition.Initialize a variable named "product" to 0. Start the loop, add M to product, decrement N, until N equals 0. end the loop.

MOV CX,N

START:
ADD BX, M
MOV PRODUCT, BX

LOOP START
 

;exit to DOS
EXIT:
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
