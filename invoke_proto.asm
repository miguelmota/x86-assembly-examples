TITLE MASM Template	(main.asm)

INCLUDE Irvine32.inc

AddNums PROTO,
	ptrArray:PTR DWORD, arrSize:DWORD

.data

	numbers DWORD 1, 2, 3, 4, 5
	msg BYTE "The sum is ",0

.code
main PROC

	INVOKE AddNums,
		ADDR numbers,
		LENGTHOF numbers

	mov edx, OFFSET msg
	call WriteString
	call WriteDec

	call Crlf
	call Crlf

exit
main ENDP

AddNums PROC USES esi, ecx,
	ptrArray:PTR DWORD,
	arrSize:DWORD

	mov esi, ptrArray
	mov ecx, arrSize
	mov eax, 0
	cmp ecx, 0
	je L2
L1: add eax, [esi]
	add esi, 4
	loop L1
L2: ret

AddNums ENDP

END main