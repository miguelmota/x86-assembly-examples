TITLE Integer Summation Program		  (Sum1.asm)

; This program prompts the user for three integers, 
; stores them in an array, calculates the sum of the
; array, and displays the sum.

INCLUDE Irvine32.inc

.data

.code
main PROC
; Main program control procedure.
; Calls: Clrscr, PromptForIntegers,
;        ArraySum, DisplaySum

	exit
main ENDP

;-----------------------------------------------------
PromptForIntegers PROC
;
; Prompts the user for three integers, inserts
; them in an array.
; Receives: ESI points to an array of
;   doubleword integers, ECX = array size.
; Returns: the array contains the values
;   entered by the user
; Calls: ReadInt, WriteString
;-----------------------------------------------------
	ret
PromptForIntegers ENDP

;-----------------------------------------------------
ArraySum PROC
;
; Calculates the sum of an array of 32-bit integers.
; Receives: ESI points to the array, ECX = array size
; Returns:  EAX = sum of the array elements
;-----------------------------------------------------
	ret
ArraySum ENDP

;-----------------------------------------------------
DisplaySum PROC
;
; Displays the sum on the screen
; Recevies: EAX = the sum
; Calls: WriteString, WriteInt
;-----------------------------------------------------
	ret
DisplaySum ENDP

END main