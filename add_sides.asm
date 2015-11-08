; Description: This program adds 4 sides.

TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data
; define side variable
side DWORD 5

.code
main PROC
	call Clrscr  

	; add sides
	mov	eax, side
	add	eax, side
	add	eax, side
	add	eax, side

	call DumpRegs

	exit
main ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

  EAX=00000014  EBX=7EFDE000  ECX=00000000  EDX=00401005
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=00401031  EFL=00000216  CF=0  SF=0  ZF=0  OF=0  AF=1  PF=1

Press any key to continue . . .

!
; =======================================
