TITLE MASM Template						(main.asm)

; Description: Find the area of a rectangle.
; 
; Revision date:

INCLUDE Irvine32.inc

.data
	enterWidthMsg BYTE "Enter the width of the rectangle in inches: ",0
	enterHeightMsg BYTE "Enter the height of the rectangle in inches: ",0
	areaMsg BYTE "The rectangle is ",0
	areaMsg2 BYTE " square inches.",0
	perimeterMsg BYTE "The perimeter of the rectangle is ",0
	perimeterMsg2 BYTE " linear inches",0
	newline BYTE 0dh,0ah,0
	aWidth DWORD ?
	aHeight DWORD ?
	perimeter DWORD ?
	area DWORD ?

.code
main PROC

	call GetDimensions

	call DumpRegs

	exit
main ENDP

GetDimensions PROC
	mov edx, OFFSET enterWidthMsg
	call WriteString
	call ReadInt
	mov aWidth, eax

	mov edx, OFFSET enterHeightMsg
	call WriteString
	call ReadInt
	mov aHeight, eax

	mov ebx, aWidth
	mov eax, aHeight
	mul ebx ; multiply whatever is in eax. imul has 3 operands
	mov area, eax

	mov edx, OFFSET areaMsg
	call WriteString
	call WriteInt
	mov edx, OFFSET areaMsg2
	call WriteString

	mov edx, OFFSET newline
	call WriteString

	mov eax, aWidth
	add eax, aWidth
	mov ebx, aHeight
	add ebx, aHeight
	add eax, ebx

	mov edx, OFFSET perimeterMsg
	call WriteString
	call WriteInt
	mov edx, OFFSET perimeterMsg2
	call WriteString
	call crlf

	ret
GetDimensions ENDP

END main