TITLE MASM Template	(main.asm)

INCLUDE Irvine32.inc
.data

	number DWORD 50

.code
main PROC
	mov ebx, 0

	.WHILE (ebx <= number)
		mov edx, offset prompt
		call WriteString
		call ReadDec
		push eax
		add count, 1
		call Clrscr
	.ENDW


exit
main ENDP

END main