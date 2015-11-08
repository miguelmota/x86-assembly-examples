; Description:

INCLUDE Irvine32.inc

.data

	str1 BYTE "Address ",0
	str2 BYTE " = ",0
	str3 BYTE "Stack Parameters:",0dh,0ah
		 BYTE "---------------------------",0dh,0ah,0

	MySample PROTO first:DWORD, second:DWORD, third:DWORD
	ShowParams PROTO numParams:DWORD

.code
main PROC

	INVOKE MySample, 1234h,5000h,6543h

	exit

main ENDP

MySample PROC,
	first:DWORD, second:DWORD, third:DWORD
	paramCount = 3

	INVOKE ShowParams, paramCount

	ret
MySample ENDP

ShowParams PROC, numParams:DWORD
	STACK_DEPTH = 5 * TYPE DWORD

	mov edx, offset str3
	call WriteString

	mov ecx, numParams
	mov esi, esp
	add esi, 20

L1: mov edx, offset str1
	call WriteString

	mov eax, esi
	call WriteHex

	mov edx, offset str2
	call WriteString

	mov eax, [esi]
	call WriteHex
	call Crlf

	add esi, 4
	loop L1

	ret
ShowParams ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !
Stack Parameters:
---------------------------
Address 0018FF80 = 00001234
Address 0018FF84 = 00005000
Address 0018FF88 = 00006543
Press any key to continue . . .
!
; =======================================