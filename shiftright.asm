TITLE MASM Template						(main.asm)

; Description: shiftright
; 
; Revision date:

INCLUDE Irvine32.inc
.data

number DWORD 20

.code
main PROC
	call Clrscr  

	mov	 ebx, number
	mov	 eax, number
	shr eax, 1 ; shr = Arithmetic Shift Right (Divide by 2)

	call DumpRegs

	exit
main ENDP

END main