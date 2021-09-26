@echo off
echo Making a backup...
IF EXIST S2NA.bin move /Y S2NA.bin S2NA.prev.bin >NUL
echo Building the ROM....
tools\clownlzss -ch "mappings\128x128\GHZ (Uncompressed).bin" "mappings\128x128\GHZ.bin"
tools\asm68k /k /m /c /q /p /o ae- S2NA.asm, S2NA.bin , , S2NA.lst >S2NA.log
IF NOT EXIST S2NA.bin goto LABLERR
echo Build finished!
goto LABLDONE
:LABLERR
echo Build failed, look at the log.
type S2NA.log
:LABLDONE
pause
