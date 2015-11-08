TITLE MASM Template						(main.asm)

; Description: Multiple numbers.
; 
; Revision date:

INCLUDE Irvine32.inc

	PI EQU 3.1416
	AN_AGE = 21
	CITY TEXTEQU <"Norco",0dh,0ah,0>
	HIGH_RISK TEXTEQU <"High risk",0dh,0ah,0>
	MOD_RISK TEXTEQU <"Moderate risk",0dh,0ah,0>
	LOW_RISK TEXTEQU <"Low risk",0dh,0ah,0>

.data

	initial BYTE "T"
	signedNum SDWORD -20
	realNum REAL4 2.5
	color BYTE "baby blue",0dh,0ah,0
	numbers SDWORD 123, -5, 333, 4
	value WORD 3 DUP(?)
	alphabet BYTE 3 DUP(?)
	grades BYTE 4 DUP('A'), 'B', 'C'
	unsignedNum DWORD 55
	piValue REAL4 PI
	age DWORD AN_AGE
	myCity BYTE CITY
	hRisk BYTE HIGH_RISK
	mRisk BYTE MOD_RISK
	lRisk BYTE LOW_RISK
	newLine BYTE 0dh,0ah,0
	num DWORD 4

.code
main PROC
	call Clrscr 

	;mov edx, offset color
	;call WriteString

	;mov edx, offset myCity
	;call WriteString

	;mov edx, offset hRisk
	;call WriteString
	;mov edx, offset mRisk
	;call WriteString
	;mov edx, offset lRisk
	;call WriteString
	;mov edx, offset newLine
	;call WriteString

	mov ebx, num
	imul eax, ebx, 3 ;the value in ebx is multiplied by 3 and result is stored in eax

	call DumpRegs

	exit
main ENDP

END main