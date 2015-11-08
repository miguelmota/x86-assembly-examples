; Description: Asks for a number of integers
; and sums them up.

TITLE HW_5

INCLUDE Irvine32.inc
.data
	
	enterCountPrompt BYTE "How many integers will be added?: ",0
	enterNumberPrompt BYTE "Enter a signed integer: ",0
	sumMsg BYTE "The sum equals ",0
	newline BYTE 0dh,0ah,0
	ARRAY_SIZE = 20
	numbers DWORD ARRAY_SIZE DUP(?)
	count DWORD 0
	sum DWORD 0

.code
main PROC

	call Clrscr 

	Call GetIntegerCount
	Call PromptForIntegers
	Call CalcSum
	Call DisplaySum

	exit
main ENDP

GetIntegerCount PROC

	mov edx, OFFSET enterCountPrompt
	call WriteString
	call ReadInt
	mov count, eax
	mov ecx, count
	mov edx, OFFSET newline
	call WriteString

GetIntegerCount ENDP

PromptForIntegers PROC

L1:
	mov edx, OFFSET enterNumberPrompt
	call WriteString
	call ReadInt
	mov numbers[ecx*4], eax
	loop L1

PromptForIntegers ENDP

CalcSum PROC

	mov eax, 0
	mov ecx, count

L2:
	add eax, numbers[ecx*4]
	loop L2

	mov sum, eax

CalcSum ENDP

DisplaySum PROC

	mov edx, OFFSET newline
	call WriteString
	mov edx, OFFSET sumMsg
	call WriteString
	mov eax, sum
	call WriteInt
	mov edx, OFFSET newline
	call WriteString

DisplaySum ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !
How many integers will be added?: 5

Enter a signed integer: 2
Enter a signed integer: 4
Enter a signed integer: 6
Enter a signed integer: 3
Enter a signed integer: 9

The sum equals +24
Press any key to continue . . .
!
; =======================================