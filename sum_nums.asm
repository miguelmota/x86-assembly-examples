TITLE MASM Template	

; Description: Sums numbers less than 50
; 
; Revision date:

INCLUDE Irvine32.inc
.data
	numbers DWORD 10,60,20,33,72,89,45,65,72,18
	limit DWORD 50
	index DWORD 0
	sum DWORD 0
	newline BYTE 0,0ah,0dh

.code
main PROC
	call Clrscr  

	mov ecx, 0

	.WHILE (index < 10)
		mov eax, numbers[4 * ecx]
		.IF (eax < limit)
			add sum, eax
		.ENDIF
		add index, 1
		inc ecx
	.ENDW

	mov eax, sum
	call WriteInt

	exit
main ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

+126
Press any key to continue . . .

!
; =======================================
