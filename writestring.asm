TITLE MASM Template						(main.asm)

; Description: writestring
; 
; Revision date:

INCLUDE Irvine32.inc
.data

firstName BYTE "Tom", 0
lastName BYTE "Lee", 0
city BYTE "Norco", 0
livesIn BYTE "lives in",0
space BYTE " ",0
period BYTE ".",0dh,0ah,0

.code
main PROC
	call Clrscr  

	mov	 edx, offset firstName
	call WriteString
	mov	 edx, offset space
	call WriteString
	mov	 edx, offset lastName
	call WriteString
	mov	 edx, offset space
	call WriteString
	mov	 edx, offset livesIn
	call WriteString
	mov	 edx, offset space
	call WriteString
	mov	 edx, offset city
	call WriteString
	mov	 edx, offset period
	call WriteString

	exit
main ENDP

END main