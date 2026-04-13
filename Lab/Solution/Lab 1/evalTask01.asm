.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here 
S DW 2220 ; monthly salary
B DW 9 ; bonus percentage
Total DW ? ; total salary

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

; we will do it like this
; (2220 * 12) + ((2220 * 12 * 9)/100) = total(int)

; yearly salary calculation
MOV AX, S
MOV BX, 12
MUL BX
; calculation 2220 * 12 = 26640 done
MOV CX, AX  ; keep 26640 save in CX, we will reuse AX

; bonus calculation (26640 * 9)/100
MOV BX, B
MUL BX
;26640 was saved in AX
; so calculation 26640 * 9 done
; result 239760

; divide 239760/100
; higher 16 bit in DX, lower 16 bit in AX
; so 239760 is in DX:AX

;let's divide by 100
MOV BX, 100
DIV BX

; Now, quotient 239760 // 100 = 2397 is in AX
; this is the bonus
; let's add it
ADD CX, AX

; yay, tumi problem ta solve kore felecho.
; Result 29037 is now in CX
; Let's move it to variable Total
MOV Total, CX 



; Best of luck Bondhu



;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
