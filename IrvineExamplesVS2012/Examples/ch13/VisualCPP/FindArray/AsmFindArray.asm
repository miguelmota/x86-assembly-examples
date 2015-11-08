TITLE FindArray Procedure      (AsmFindArray.asm)

; This version is much faster than the ASM code on page 539
; because it avoids the LOOP and SCASD instructions.

.586
.model flat,C

AsmFindArray PROTO,
	srchVal:DWORD, arrayPtr:PTR DWORD, count:DWORD

.code
;-----------------------------------------------
AsmFindArray PROC USES edi,
	srchVal:DWORD, arrayPtr:PTR DWORD, count:DWORD
;
; Performs a linear search for a 32-bit integer
; in an array of integers. Returns a boolean 
; value in AL indicating if the integer was found.
;-----------------------------------------------
	true = 1
	false = 0


 	mov	eax,srchVal    			; search value
 	mov	ecx,count      			; number of items
 	mov	edi,arrayPtr   			; pointer to array

L1: cmp  ecx,0
	 je   returnFalse
	 cmp  [edi],eax
 	 je	returnTrue      			; ZF = 1 if found	 
	 dec  ecx
	 jmp short L1

returnFalse:             
     mov	al,false     
     jmp	short exit

returnTrue:
     mov	al, true

exit:	
	ret   
AsmFindArray ENDP

END

