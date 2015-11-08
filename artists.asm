; Description: This program defines artists
; and outputs an artist's name.

TITLE HW_3b

INCLUDE Irvine32.inc
.data
; define symbolic names
Surrealism BYTE "Salvador Dali", 0dh, 0ah, 0
Abstract BYTE "Jackson Pollock", 0dh, 0ah, 0
Impressionism BYTE "Renoir", 0dh, 0ah, 0

; define artist variables
artist1 = Surrealism
artist2 = Abstract
artist3 = Impressionism

.code
main PROC
	call Clrscr  

	; display artist
	mov	edx, offset artist1
	call WriteString

	call DumpRegs

	exit
main ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

Salvador Dali

  EAX=75363358  EBX=7EFDE000  ECX=00000000  EDX=00405000
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=00401024  EFL=00000202  CF=0  SF=0  ZF=0  OF=0  AF=0  PF=0

Press any key to continue . . .

!
; =======================================
