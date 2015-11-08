TITLE MASM Template	(main.asm)

INCLUDE Irvine32.inc
.data

	prompt BYTE "Enter a number: ",0
	maxIs BYTE "The highest value is: ",0
	count DWORD 0
	num1 DWORD 0
	num2 DWORD 0
	num3 DWORD 0
	max DWORD 0

.code
main PROC

	; Half complete, not getting max.

	.WHILE (count < 3)
		mov edx, offset prompt
		call WriteString
		call ReadDec
		push eax
		add count, 1
		call Clrscr
	.ENDW

	pop eax
	mov num1, eax
	pop eax
	mov num2, eax
	pop eax
	mov num3, eax

	mov eax, num1
	cmp eax, num2
	jbe next
	mov eax, num2
	cmp eax, num3
	jbe next
	mov eax, num1
	mov max, eax
	jmp done
	
	next:
		mov eax, num2
		cmp eax, num3 
		jbe done
		mov eax, num2
		mov max, eax ; num2 = max
		jmp done
		mov eax, num3
		mov max, eax ; num3 = max

	done:
		mov edx, offset maxIs
		call WriteString
		mov eax, max
		call WriteDec

exit
main ENDP

END main