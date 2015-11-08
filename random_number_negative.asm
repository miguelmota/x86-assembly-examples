TITLE MASM Template						(main.asm)

; Description: Find number of negative numbers in set of random numbers.
; 
; Revision date:

INCLUDE Irvine32.inc

.data
	intArray DWORD 20 DUP(?)
	count DWORD 0
	displayNums BYTE "Here are 20 random numbers:",0dh,0ah,0dh,0ah,0
	negNumCount BYTE "The number of negative numbers is: ",0

.code
main PROC
	call Randomize
	; Fill the array with random values
	mov esi, OFFSET intArray
	mov ecx, LENGTHOF intArray

	mov edx, OFFSET displayNums
	call WriteString

L1:
	call Random32 ; EAX = random value
	call WriteInt
	call Crlf
	mov [esi], eax
	add esi, 4
	loop L1

	; Search for negative values
	mov esi, OFFSET intArray ; point to the array
	mov ecx, LENGTHOF intArray ; loop counter

L2:
	cmp dword ptr [esi], 0
	jge L3
	inc count

L3:
	add esi, 4
	loop L2
	call Crlf
	mov edx, OFFSET negNumCount
	call WriteString

	mov eax, count
	call WriteDec
	call Crlf
	call Crlf

	exit
main ENDP

END main