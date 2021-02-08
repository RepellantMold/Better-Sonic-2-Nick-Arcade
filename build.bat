@echo off
echo Compilando S2NA.prev.bin...
IF EXIST S2NA.bin move /Y S2NA.bin S2NA.prev.bin >NUL
echo Building the ROM....
cd mappings
cd 128x128
kc-compress "GHZ (Uncompressed).bin" GHZ.bin
cd..
cd..
asm68k /k /m /c /q /p /o ae- S2NA.asm, S2NA.bin , , S2NA.lst >S2NA.log
cls
IF NOT EXIST S2NA.bin goto LABLERR
echo Compilacion Exitosa!
goto LABLDONE
:LABLERR
echo Build failed.
type S2NA.log
:LABLDONE
pause