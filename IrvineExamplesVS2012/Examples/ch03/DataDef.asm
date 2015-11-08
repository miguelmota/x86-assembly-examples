TITLE Data Definitions               (DataDef.asm)

; Examples showing how to define data.

INCLUDE Irvine32.inc

; ----------------- Byte Values ----------------
.data
value1  BYTE  'A'
value2  BYTE   0
value3  BYTE   255
value4  SBYTE  -128
value5  SBYTE  +127
value6  BYTE   ?

list1   BYTE  10, 32, 41h, 00100010b
list2   BYTE  0Ah, 20h, 'A', 22h
array1  BYTE  20 DUP(0)

greeting1 BYTE "Good afternoon",0

; ----------------- Word Values ---------------------

word1   WORD   65535	; largest unsigned value
word2   SWORD  -32768	; smallest signed value
word3   WORD   ?		; uninitialized
myList  WORD   1,2,3,4,5	; array of words

; --------------- DoubleWord Values --------------

val1  DWORD   12345678h
val2  SDWORD  -2147483648
val3  DWORD   20 DUP(?)

; ------- QuadWord and TenByte Values ------------

quad1  DQ  234567812345678h
ten1   DT  1000000000123456789Ah

;------------------ Reals --------------------

rVal1  REAL4   -1.2
rVal2  REAL8   3.2E-260
rVal3  REAL10  4.6E4096

; Exponent ranges for Reals

ShortRealMax REAL4 9.9E+37		; maximum exponent
ShortRealMin REAL4 9.9E-38		; minimum exponent

LongRealMax REAL8 9.0E+307		; maximum exponent
LongRealMin REAL8 9.9E-308		; minimum exponent

ExtRealMax REAL10 9.9E+4931		; maximum exponent
ExtRealMin REAL10 9.9E-5199		; minimum exponent


ShortArray REAL4 20 DUP(0.0)

; ----------------- Pointers ---------------------

arrayB  BYTE  10,20,30,40
arrayW  WORD  1000h,2000h,3000h,4000h
ptrB    DWORD  arrayB			; points to arrayB
ptrW    DWORD  arrayW			; points to arrayW

.code
main PROC

; (insert instructions here)

	exit
main ENDP
END main