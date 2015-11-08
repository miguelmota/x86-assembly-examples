TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc

.data

	msg BYTE "Do your homework!",0dh,0ah,0
	startTime DWORD ?


.code
main PROC
	call Clrscr 

	mov ecx, 1000 ; ecx is a counter that decrements to 0
	mov edx, OFFSET msg
	call GetMseconds
	mov startTime, eax
L1:
	call WriteString
loop L1

	call GetMseconds
	sub eax, startTime

	call DumpRegs

	exit
main ENDP

END main