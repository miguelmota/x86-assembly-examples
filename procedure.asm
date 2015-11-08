TITLE MASM Template						(main.asm)

; Description: Example using procedures.
; 
; Revision date:

INCLUDE Irvine32.inc

.data

	prompt BYTE "Enter an integer: ",0
	show BYTE "The number is: ",0

.code
main PROC
	call GetNum
	call ShowNum

	call Crlf
	call Crlf

	call DumpRegs

	exit
main ENDP

GetNum PROC
	mov edx, OFFSET prompt
	call WriteString
	call ReadDec
	ret
GetNum ENDP

ShowNum PROC
	mov edx, OFFSET show
	call WriteString
	call WriteDec
	ret
ShowNum ENDP

END main