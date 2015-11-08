TITLE MASM Template						(main.asm)

; Description: Generate a random number.
; 
; Revision date:

INCLUDE Irvine32.inc

.data

	randVal DWORD ?

.code
main PROC
	call Clrscr 
	
	call Randomize
	call Random32
	mov randVal, eax

	call DumpRegs

	exit
main ENDP

END main