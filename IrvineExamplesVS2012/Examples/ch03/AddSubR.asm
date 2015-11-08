TITLE Add and Subtract              (AddSubR.asm)

; This program adds and subtracts 32-bit integers.
; 16-bit Real mode version.

.MODEL small,stdcall
.STACK 4096
.386

DumpRegs PROTO

.code
main PROC
	mov	ax,@data		; data seg address
	mov	ds,ax		; copy to DS

	mov	eax,10000h	; EAX = 10000h
	add	eax,40000h	; EAX = 50000h
	sub	eax,20000h	; EAX = 30000h
	call	DumpRegs

	mov	ah,4Ch		; exit process
	mov	al,0			; return code = 0
	int	21h			; call MS-DOS function
main ENDP
END main