; Description: Encodes and Decodes a string.

INCLUDE Irvine32.inc
.data
	key BYTE -2, 4, 1, 0, -3, 5, 2, -4, -4, 6
	keySize = $ - key
	encodedMsg BYTE "ENCODED:",0dh,0ah,0
	decodedMsg BYTE "DECODED:",0dh,0ah,0
	plainText BYTE "This is a secret message.",0

.code
main PROC
	call Clrscr

	mov esi, OFFSET plainText

L1:	mov ecx, keySize
	mov edi, OFFSET key
	call Encode
	jnz L1

	mov esi, OFFSET plainText
	mov edx, OFFSET encodedMsg
	call WriteString
	mov edx, OFFSET plainText
	call WriteString
	call Crlf
	call Crlf

L2: mov ecx, keySize
	mov edi, OFFSET key
	call Decode
	jnz L2

	mov edx, OFFSET decodedMsg
	call WriteString
	mov edx, OFFSET plainText
	call WriteString
	call Crlf
	call Crlf

	exit
main ENDP

Encode PROC

L1: push ecx
	cmp BYTE PTR[esi], 0
	je L4

	mov cl, [edi]
	cmp cl,0
	jge L2
	rol BYTE PTR[esi],cl
	jmp L3
L2: ror BYTE PTR[esi], cl

L3: inc esi
	inc edi
	pop ecx
	loop L1

	or eax, 1
	jmp L5

L4: pop ecx
L5: ret
Encode ENDP

Decode PROC

L1: push ecx
	cmp BYTE PTR[esi],0
	je L4

	mov cl,[edi]
	cmp cl, 0
	jge L2
	ror BYTE PTR[esi],cl
	jmp L3

L2: rol BYTE PTR[esi],cl

L3: inc esi
	inc edi
	pop ecx
	loop L1

	or eax, 1
	jmp L5

L4: pop ecx
L5: ret
Decode ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

ENCODED:
§å┤s♦K▄☻▬Ç▄V▒r¼╓V═▄▬│e┼

DECODED:
This is a secret message.

Press any key to continue . . .

!
; =======================================