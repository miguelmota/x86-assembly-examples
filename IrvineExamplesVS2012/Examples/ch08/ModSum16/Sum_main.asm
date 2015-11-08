TITLE Integer Summation Program		 (Sum_main.asm)

; Multimodule example:   (main module)
; This program inputs multiple integers from the user,
; stores them in an array, calculates the sum of the
; array, and displays the sum.

INCLUDE sum.inc

; modify Count to change the size of the array:
Count = 3

.data
prompt1 BYTE  "Enter a signed integer: ",0
prompt2 BYTE  "The sum of the integers is: ",0
array   DWORD  Count DUP(?)
sum     DWORD  ?

.code
main PROC
	mov  ax,@data			; 16-bit initialization (3/29/04)
	mov  ds,ax
	call Clrscr

	INVOKE PromptForIntegers,		; input the array
	  ADDR prompt1,
	  ADDR array,
	  Count

	INVOKE ArraySum,		; sum the array
	  ADDR array,		; (returns sum in EAX)
	  Count
	mov sum,eax		; save the sum

	INVOKE DisplaySum,		; display the sum
	  ADDR prompt2,
	  sum

	call Crlf
	exit				; changed 3/29/04
main ENDP

END main