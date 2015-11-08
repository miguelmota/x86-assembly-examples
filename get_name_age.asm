; Description: User inputs name and age

TITLE HW_5a

INCLUDE Irvine32.inc
.data

	lastName BYTE 80 DUP(0)
	firstName BYTE 80 DUP(0)
	middleInitial BYTE 80 DUP(0)
	age BYTE 80 DUP(0)
	enterLastName BYTE "Enter your last name: ",0
	enterFirstName BYTE "Enter your first name: ",0
	enterMiddleInitial BYTE "Enter your middle initial: ",0
	enterAge BYTE "Enter your age: ",0
	isStr BYTE " is ",0
	yearsOldStr BYTE " years old.",0dh,0ah,0
	period BYTE ".",0
	space BYTE " ",0
	newline BYTE 0dh,0

.code
main PROC

	call Clrscr 
	mov edx, OFFSET enterLastName
	call WriteString

	mov edx, OFFSET lastName
	mov ecx, SIZEOF lastName -1
	call ReadString

	mov edx, OFFSET newline
	call WriteString

	mov edx, OFFSET enterFirstName
	call WriteString

	mov edx, OFFSET firstName
	mov ecx, SIZEOF firstName -1
	call ReadString

	mov edx, OFFSET newline
	call WriteString

	mov edx, OFFSET enterMiddleInitial
	call WriteString

	mov edx, OFFSET middleInitial
	mov ecx, SIZEOF middleInitial -1
	call ReadString

	mov edx, OFFSET newline
	call WriteString

	mov edx, OFFSET enterAge
	call WriteString

	mov edx, OFFSET age
	mov ecx, SIZEOF age -1
	call ReadString

	mov edx, OFFSET newline
	call WriteString

	mov edx, OFFSET firstName
	call WriteString

	mov edx, OFFSET space
	call WriteString

	mov edx, OFFSET middleInitial
	call WriteString

	mov edx, OFFSET period
	call WriteString

	mov edx, OFFSET space
	call WriteString

	mov edx, OFFSET lastName
	call WriteString

	mov edx, OFFSET isStr
	call WriteString

	mov edx, OFFSET age
	call WriteString

	mov edx, OFFSET yearsOldStr
	call WriteString

	exit
main ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

Enter your last name: Lee
Enter your first name: Tom
Enter your middle initial: P
Enter your age: 21
Tom P. Lee is 21 years old.
Press any key to continue . . .

!
; =======================================