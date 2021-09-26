@echo off
echo Making backup...
IF EXIST S2NA.bin move /Y S2NA.bin S2NA.prev.bin >NUL
echo Building the ROM....
tools\clownlzss -ch "mappings\128x128\GHZ (Uncompressed).bin" "mappings\128x128\GHZ.bin"
cls
tools\vasmm68k_mot_win32.exe -m68000 -no-opt -Fbin S2NA.asm -o S2NA.bin -L S2NA.lst > S2NA.log
IF NOT EXIST S2NA.bin goto LABLERR
echo Compilation done!
goto LABLDONE
:LABLERR
echo Build failed.
type S2NA.log
:LABLDONE
pause
