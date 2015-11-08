TITLE Reading Disk Sectors         (ReadSec.asm)

; The ReadSector procedure is called from a 16-bit
; Real-mode application written in Borland C++ 5.01.
; It can read FAT12, FAT16, and FAT32 disks under
; MS-DOS, and Windows 95/98/Me.
; Last update: 12/5/01

Public _ReadSector
.model small
.386

DiskIO STRUC
	strtSector  DD ?		; starting sector number
	nmSectors   DW 1		; number of sectors
	bufferOfs   DW ?		; buffer offset
	bufferSeg   DW ?		; buffer segment
DiskIO ENDS

.data
diskStruct DiskIO <>

.code
;----------------------------------------------------------
_ReadSector PROC NEAR C
 ARG bufferPtr:WORD, startSector:DWORD, driveNumber:WORD, \
     numSectors:WORD
;
; Read n sectors from a specified disk drive.
; Receives: pointer to buffer that will hold the sector,
;   data, starting sector number, drive number,
;   and number of sectors.
; Returns: nothing
;----------------------------------------------------------
	enter 0,0
	pusha
	mov  eax,startSector
	mov  diskStruct.strtSector,eax
	mov  ax,numSectors
	mov  diskStruct.nmSectors,ax
	mov  ax,bufferPtr
	mov  diskStruct.bufferOfs,ax
	push ds
	pop  diskStruct.bufferSeg

	mov  ax,7305h		; ABSDiskReadWrite
	mov  cx,0FFFFh             		; always this value
	mov  dx,driveNumber		; drive number
	mov  bx,OFFSET diskStruct		; sector number
	mov  si,0		; read mode
	int  21h               		; read disk sector
	popa
	leave
	ret
_ReadSector ENDP
END