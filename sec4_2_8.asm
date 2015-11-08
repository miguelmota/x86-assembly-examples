TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc
.data
val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh

.code
main PROC
	call Clrscr  

	;mov ax, val2
	;add ax, 1

	;mov ax, val4
	;add ax, 1

	;mov ax,7FF0h
	;add al,10h ; a. CF = SF = ZF = OF =
	;add ah,1 ; b. CF = SF = ZF = OF =
	;add ax,2 ; c. CF = SF = ZF = OF =

	mov al, val2
	neg al
	add bx, al
	sub bx, val4



	call DumpRegs

	exit
main ENDP

END main