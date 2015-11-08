TITLE Add and Subtract              (AddSubAlt.asm)

; This program adds and subtracts 32-bit integers.
; 32-bit Protected mode version

.386
.MODEL flat,stdcall
.STACK 4096

ExitProcess PROTO,dwExitCode:DWORD
DumpRegs PROTO

.code
main PROC

	mov	eax,10000h		; EAX = 10000h
	add	eax,40000h		; EAX = 50000h
	sub	eax,20000h		; EAX = 30000h
	call	DumpRegs

	INVOKE ExitProcess,0
main ENDP
END main