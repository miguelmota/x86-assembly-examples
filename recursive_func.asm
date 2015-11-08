TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc

.data

	msg BYTE "racecar", 0
	msgSize = ($ - msg) -1


.code
main PROC
	call Clrscr 

	; push the message on the stack
	mov ecx, msgSize ; ecx is a counter that decrements to 0
	mov esi, 0 ; use a loop with indexed address

L1:
	movzx eax, msg[esi] ; get a character from the string and put it
	push eax ; in EAX (must be 32 bits to be pushed)
	inc esi ; push it on the stack
	loop L1 ; increment the index

	; pop the message from the stack in reverse order and store in msg array
	mov ecx, msgSize
	mov esi, 0

L2:
	pop eax ; get a character
	mov msg[esi], al ; store it in the string beggining at [0]
	inc esi ; increment the index
	loop L2

	mov edx, OFFSET msg ; display the message in reverse
	call WriteString
	call Crlf


	call DumpRegs

	exit
main ENDP

END main