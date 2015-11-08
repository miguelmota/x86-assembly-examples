TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc

.data

	numbers DWORD 2,4,5,7,9

.code
main PROC
	mov esi, OFFSET numbers
	mov ecx, LENGTHOF numbers
	call ArraySum

	call DumpRegs

	exit
main ENDP

ArraySum PROC
	mov eax, 0
L1:
	add eax, [esi]
	add esi, 4
	loop L1
	ret
ArraySum ENDP

END main