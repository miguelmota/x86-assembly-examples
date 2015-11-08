TITLE Add and Subtract, Version 2, Real Mode (AddSub2r.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine16.inc	; new

.data
val1     dword  10000h
val2     dword  40000h
val3     dword  20000h
finalVal dword  ?

.code
main PROC
	mov	ax,@data		; initialize DS
	mov	ds,ax		; new

	mov	eax,val1		; start with 10000h
	add	eax,val2		; add 40000h
	sub	eax,val3		; subtract 20000h
	mov	finalVal,eax	; store the result (30000h)
	call DumpRegs		; display the registers

	exit
main ENDP
END main