; Description: Creates constants and moves
; them to registers.

TITLE MASM Template	(main.asm)

INCLUDE Irvine32.inc
.data
; day symbolic constants
Sunday DWORD 0
Monday DWORD 1
Tuesday DWORD 2
Wednesday DWORD 3
Thursday DWORD 4
Friday DWORD 5
Saturday DWORD 6

; days array
days DWORD Sunday, Monday, Tuesday, Wednesday, Friday, Saturday

.code
main PROC
	call Clrscr  

	; moving to registers
	mov	eax, Thursday
	mov ebx, Wednesday
	mov ecx, Tuesday
	mov edx, Monday

	call DumpRegs

	exit
main ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

  EAX=00000004  EBX=00000003  ECX=00000002  EDX=00000001
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=004020D1  EFL=00000212  CF=0  SF=0  ZF=0  OF=0  AF=1  PF=0

Press any key to continue . . .

!
; =======================================
