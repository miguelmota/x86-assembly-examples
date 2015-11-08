; LongRandom procedure module      (LongRand.asm)
; modified for MASM, 4/3/2007

.model large
.386
Public LongRandom
.data
seed  dd 12345678h

; Return an unsigned pseudo-random 32-bit integer
; in DX:AX,in the range 0 - FFFFFFFFh.

.code
LongRandom  proc far C 
      mov   eax, 214013
      mul  seed
      xor   edx,edx
      add   eax, 2531011
      mov   seed, eax    ; save the seed for the next call
      shld  edx,eax,16   ; copy upper 16 bits of EAX to DX
      ret
LongRandom  endp
end
