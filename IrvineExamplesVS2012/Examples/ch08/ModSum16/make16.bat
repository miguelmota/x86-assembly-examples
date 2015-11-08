REM  make16.bat -  batch file for assembling/linking 
REM  Special version for the ModSum program
REM  Requires 16-bit Linker, downloaded from Microsoft FTP site.

REM  Revised: 9/18/2008  (for Visual Studio 2008)

@echo off
cls

REM The following three lines can be customized for your system:
REM ********************************************BEGIN customize
SET MASM="C:\Program Files\Microsoft Visual Studio 9.0\VC\bin\"
SET INCLUDE=C:\Irvine
SET LIB=C:\Irvine
REM ********************************************END customize

%MASM%ML -Zi -c -omf -Fl Sum_main.asm
if errorlevel 1 goto terminate
%MASM%ML -Zi -c -omf -Fl _display.asm 
if errorlevel 1 goto terminate
%MASM%ML -Zi -c -omf -Fl _arrysum.asm 
if errorlevel 1 goto terminate
%MASM%ML -Zi -c -omf -Fl _prompt.asm
if errorlevel 1 goto terminate


REM add the /MAP option for a map file in the link command.

c:\Irvine\LINK16 /nologo /CODEVIEW Sum_main.obj+_display.obj+_arrysum.obj+_prompt.obj,,NUL,Irvine16;
if errorLevel 1 goto terminate

dir *.exe

:terminate
pause


