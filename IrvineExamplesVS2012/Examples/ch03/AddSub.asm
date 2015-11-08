TITLE Add and Subtract          (AddSub.asm)

; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC

	mov	eax,10000h		; EAX = 10000h
	add	eax,40000h		; EAX = 50000h
	sub	eax,20000h		; EAX = 30000h
	call	DumpRegs

	exit
main ENDP
END main