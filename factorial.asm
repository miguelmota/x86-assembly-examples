; Description: Find factorial of a number.

INCLUDE Irvine32.inc

.data
	
	msgInput BYTE "Enter the value of n to calculate "
			 BYTE "the factorial (-1 to quit): ",0
	msgOutput BYTE "The factorial is: ",0

.code
main PROC
	L1:
		mov edx, OFFSET msgInput
		call WriteString
		call ReadInt
		call Crlf
		cmp eax, 0
		jl quit

		call calcFactorial
		jc failed

		push eax
		mov edx, OFFSET msgOutput
		call WriteString
		pop eax
		call WriteDec

	failed:
		call Crlf
		call Crlf
		loop L1

		quit: exit

main ENDP

calcFactorial PROC USES ecx edx

.data
	factorialError BYTE "Error: Calculated value cannot "
				   BYTE "fit into 32 bits",0
.code
	.IF eax == 0 || eax == 1
		mov eax, 1
		jmp end_factorial
	.ENDIF

	mov ecx, eax

Factorial_loop:
	dec ecx
	mul ecx

	jc error
	cmp ecx, 1
	ja Factorial_loop
	jmp end_factorial

error:
	mov edx, OFFSET factorialError
	call WriteString
	stc

end_factorial:
		ret

calcFactorial ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !
Enter the value of n to calculate the factorial (-1 to quit): 5

The factorial is: 120

Enter the value of n to calculate the factorial (-1 to quit): 7

The factorial is: 5040

Enter the value of n to calculate the factorial (-1 to quit): -1

Press any key to continue . . .
!
; =======================================