TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc
.data
var1 SBYTE -4,-2,3,1
var2 WORD 1000h,2000h,3000h,4000h
var3 SWORD -16,-42
var4 DWORD 1,2,3,4,5


.code
main PROC
	call Clrscr  

	;mov ax,var1
	;mov ax,var2
	;mov eax,var3
	;mov var2,var3
	;movzx ax,var2
	;movzx var2,al
	;mov ds,ax
	;mov ds,1000h

	;mov ax,var2 ; a.
	;mov ax,[var2+4] ; b.
	;mov ax,var3 ; c.
	;mov ax,[var3-2] ; d.

	;mov edx,var4 ; a.
	;movzx edx,var2 ; b.
	;mov edx,[var4+4] ; c.
	;movsx edx,var1 ; d.

	call DumpRegs

	exit
main ENDP

END main