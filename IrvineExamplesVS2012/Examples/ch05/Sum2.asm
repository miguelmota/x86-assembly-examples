TITLE Integer Summation Program		     (Sum2.asm)

; This program prompts the user for three integers, 
; stores them in an array, calculates the sum of the
; array, and displays the sum.

INCLUDE Irvine32.inc

INTEGER_COUNT = 3

.data
str1  BYTE  "Enter a signed integer: ",0
str2  BYTE  "The sum of the integers is: ",0
array DWORD  INTEGER_COUNT DUP(?)

.code 
main PROC
	call	Clrscr
	mov	esi,OFFSET array
	mov	ecx,INTEGER_COUNT
	call	PromptForIntegers
	call	ArraySum
	call	DisplaySum
	exit
main ENDP

;-----------------------------------------------------
PromptForIntegers PROC USES ecx edx esi
;
; Prompts the user for an arbitrary number of integers 
; and inserts the integers into an array.
; Receives: ESI points to the array, ECX = array size
; Returns:  nothing
;-----------------------------------------------------
	mov	edx,OFFSET str1	; "Enter a signed integer"
	
L1:	call	WriteString		; display string
	call	ReadInt			; read integer into EAX
	call	Crlf				; go to next output line
	mov	[esi],eax			; store in array
	add	esi,TYPE DWORD		; next integer
	loop	L1

	ret
PromptForIntegers ENDP

;-----------------------------------------------------
ArraySum PROC USES esi ecx
;
; Calculates the sum of an array of 32-bit integers.
; Receives: ESI points to the array, ECX = number 
;   of array elements
; Returns:  EAX = sum of the array elements
;-----------------------------------------------------
	mov	eax,0		; set the sum to zero
L1:	add	eax,[esi]		; add each integer to sum
	add	esi,TYPE DWORD	; point to next integer
	loop	L1			; repeat for array size
	ret				; sum is in EAX
ArraySum ENDP

;-----------------------------------------------------
DisplaySum PROC USES edx
;
; Displays the sum on the screen
; Receives: EAX = the sum
; Returns:  nothing
;-----------------------------------------------------
	mov	edx,OFFSET str2	; "The sum of the..."
	call	WriteString
	call	WriteInt			; display EAX
	call	Crlf
	ret
DisplaySum ENDP
END main