@echo off
REM make16.bat
REM Created 06/01/2006
REM By: Kip R. Irvine

REM Assembles and links the SEG2 program in the ch16 directory.

REM Assumes you have installed Microsoft Visual Studio 2005,
REM or Visual C++ 2005 Express.
REM 
REM Command-line options (unless otherwise noted, they are case-sensitive):
REM 
REM -Cp         Enforce case-sensitivity for all identifiers
REM -Zi		Include source code line information for debugging
REM -Fl		Generate a listing file (see page 88)
REM /CODEVIEW   Generate CodeView debugging information (linker)
REM %1.asm      The name of the source file, passed on the command line

REM ************* The following lines can be customized:
SET MASM="C:\Program Files\Microsoft Visual Studio 9.0\VC\bin\"
SET INCLUDE=C:\Irvine
SET LIB=C:\Irvine
REM **************************** End of customized lines

REM Invoke ML.EXE (the assembler):

%MASM%ML -nologo -c -omf -Fl -Zi seg2.asm
if errorlevel 1 goto terminate

%MASM%ML -nologo -c -omf -Fl -Zi seg2a.asm
if errorlevel 1 goto terminate

REM Run the 16-bit linker:

c:\Irvine\LINK16 seg2 seg2a,,seg2,Irvine16;

if errorlevel 1 goto terminate

REM Display all files related to this program:
DIR seg2*.*

:terminate
pause
