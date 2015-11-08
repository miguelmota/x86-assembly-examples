TITLE ArraySum Procedure                 (_arrysum.asm)

INCLUDE sum.inc
.code
;-----------------------------------------------------
ArraySum PROC,
	ptrArray:PTR DWORD,	; pointer to array
	arraySize:DWORD	; size of array
;
; Calculates the sum of an array of 32-bit integers.
; Returns:  EAX = sum
;-----------------------------------------------------
	push ecx	; don't push EAX
	push esi

	mov  eax,0	; set the sum to zero
	mov  si,ptrArray		; changed 3/29/04
	mov  ecx,arraySize
	cmp  ecx,0	; array size <= 0?
	jle  L2	; yes: quit

L1:
	add  eax,[si]	; add each integer to sum
	add  si,4	; point to next integer
	loop L1	; repeat for array size

L2:
	pop esi
	pop ecx	; return sum in EAX
	ret
ArraySum ENDP
END