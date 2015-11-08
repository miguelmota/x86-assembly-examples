TITLE MASM Template	(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc

A_LINE TEXTEQU <"--------------------------",0>

.data
	line BYTE A_LINE
	newLine BYTE 0dh, 0ah, 0
	msg BYTE "Welcome to my world!",0

.code
main PROC
	call Clrscr 

	mov edx, offset line
	call WriteString
	mov edx, offset newLine
	call WriteString
	mov	edx, offset msg
	call WriteString
	mov edx, offset newLine
	call WriteString
	mov edx, offset line
	call WriteString
	mov edx, offset newLine
	call WriteString

	call DumpRegs

	exit
main ENDP

END main