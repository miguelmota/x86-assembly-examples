TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc

.data
	fileName BYTE "outFile.txt",0
	msg BYTE "To be, or not to be, that is the question.",0
	finalMsg BYTE "The message has been written to fa file.",0

.code
main PROC
	mov edx, OFFSET fileName
	call CreateOutputFile

	mov ecx, LENGTHOF msg
	mov edx, OFFSET msg
	call WriteToFile

	mov edx, OFFSET finalMsg
	call WriteString
	call Crlf
	call Crlf

	exit
main ENDP

END main