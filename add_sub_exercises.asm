TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc

.data




.code
main PROC
	call Clrscr 

	; exercise #8
	;source BYTE "This is the source string",0dh,0ah,0
	;destination BYTE SIZEOF source DUP(0)
	;mov esi, 0
	;mov ecx, SIZEOF source
;L1:
	;mov al, source[esi]
	;mov destination[esi], al
	;inc esi
	;loop L1
	;mov edx, offset destination
	;call WriteString




	; exercise #7
	;intArray DWORD 10000h, 20000h, 30000h, 40000h
	;mov edi, OFFSET intArray ; address of intArray
	;mov ecx, LENGTHOF intArray ; length of array
	;mov eax, 0
	;L1:
	;	add eax, [edi]
	;	add edi, TYPE intArray ; size of one array element
	;	loop L1 ; repeat until ecx = 0




	; exercise #6
	;arrayD DWORD 1,2,3
	;mov eax, arrayD
	;xchg eax, arrayD+4
	;xchg eax, arrayD+8
	;mov arrayD, eax



	; exercise #6
	;num1 DWORD 5
	;num2 DWORD 3
	;mov eax, num1
	;add eax, num2
	;call DumpRegs
	;sub eax, 4
	;call DumpRegs
	;dec eax
	;call DumpRegs
	;neg eax
	;call DumpRegs




	; exercise #5
	; result = -xVal + (yVal - zVal);
	;result SDWORD ? 
	;xVal SDWORD 26
	;yVal SDWORD 30
	;zVal SDWORD 40
	;mov eax, yVal
	;sub eax, zval
	;mov ebx, xVal
	;neg ebx
	;add eax, ebx
	;mov result, eax



	; exercise #4
	;scores WORD 77, 82, 93, 86
	;movzx eax, scores+4 ;5D = 3rd element


	; exercise #3
	;firstLetter BYTE 'A'
	;lastLetter BYTE 'Z'
	;mov al, firstLetter
	;mov bl, lastLetter
	;XCHG al, bl



	; exercise #2
	;value WORD 5
	;mov ebx, 0
	;mov bx, value
	;movzx eax, bx



	; exercise #1
	;bVal BYTE 100
	;bVal BYTE ?
	;wVal WORD 2
	;dVal DWORD 5
	; all these are invalid
	;mov ds, 45 ; cannot move a value to data segement, only address
	;mov esi, wVal ; size mismatch
	;mov eip, dVal ; eip cannot be destination for mov
	;mov 25, bVal ; immediate value cannot be the destination
	;mov bVal2, bVal ; cannot move memory to memory

	call DumpRegs

	exit
main ENDP

END main