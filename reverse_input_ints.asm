; Description: Inputs 4 integers and 
; displays them in reversed order.

TITLE HW_5a

INCLUDE Irvine32.inc
.data
	
	enterPrompt BYTE "Enter 4 integer values: ",0dh,0ah,0
	orderMsg BYTE "Here are the numbers in reverse order:",0dh,0ah,0
	sumMsg BYTE "The sum equals ",0
	newline BYTE 0dh,0ah,0
	count = 4
	number DWORD ?
	sum DWORD 0

.code
main PROC

	call Clrscr 

	mov edx, OFFSET enterPrompt
	call WriteString

	mov ecx, count
	mov esi, 0
L1:
	call ReadInt
	mov number, eax
	push eax
	mov eax, sum
	add eax, number
	mov sum, eax
	inc esi
	loop L1

	mov edx, OFFSET newline
	call WriteString
	mov ecx, count
	mov esi, 0
L2:
	mov edx, eax
	pop eax
	call WriteInt
	mov edx, OFFSET newline
	call WriteString
	inc esi
	loop L2

	mov edx, OFFSET newline
	call WriteString
	mov edx, OFFSET sumMsg
	call WriteString
	mov eax, sum
	call WriteInt
	mov edx, OFFSET newline
	call WriteString

	exit
main ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

Enter 4 integer values:
3
6
12
7

+7
+12
+6
+3

The sum equals +28
Press any key to continue . . .

!
; =======================================