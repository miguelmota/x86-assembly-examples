TITLE MASM Template						(main.asm)

; Description: Read input key.
; 
; Revision date:

INCLUDE Irvine32.inc

.data

	character BYTE ?
	enterMsg BYTE "Press a key: ",0
	response BYTE "The key you entered is: ",0
	newline BYTE 0dh,0ah,0

.code
main PROC
	call Clrscr 
	mov edx, OFFSET enterMsg
	call WriteString

	call ReadChar
	mov character, al
	call Clrscr
	mov edx, OFFSET response
	call WriteString
	mov edx, OFFSET character
	call WriteChar
	mov edx, OFFSET newline
	call WriteString

	call DumpRegs

	exit
main ENDP

END main