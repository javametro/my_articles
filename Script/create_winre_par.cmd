@echo on
setlocal enabledelayedexpansion

pushd C:\"Program Files (x86)"\NECWinPartitionDP\
:get system disk NUM
GetDiskNum.exe
if %ERRORLEVEL% == 0 (set /a diskNUM=0)
C:\"Program Files (x86)"\NECWinPartitionDP\GetDiskNum.exe
if %ERRORLEVEL% == 1 (set /a diskNUM=1)
echo %diskNUM%

:CONTINUE
echo sel disk %diskNUM% >C:\"Program Files (x86)"\NECWinPartitionDP\shrink-cc.script
echo sel volume C >>C:\"Program Files (x86)"\NECWinPartitionDP\shrink-cc.script
echo shrink desired=%WINRESIZE% >>C:\"Program Files (x86)"\NECWinPartitionDP\shrink-cc.script
echo exit >>C:\"Program Files (x86)"\NECWinPartitionDP\shrink-cc.script
diskpart /s "C:\Program Files (x86)\NECWinPartitionDP\shrink-cc.script"
IF ERRORLEVEL=0 (
ECHO %date% %time%- %errorlevel%  shrink winRE par SUCESS >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
) ELSE (
ECHO %date% %time%- %errorlevel%  shrink winRE par FAILED >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
EXIT /B 1
)
del /f C:\"Program Files (x86)"\NECWinPartitionDP\shrink-cc.script
del /f C:\"Program Files (x86)"\NECWinPartitionDP\winresize.txt


rem ==recreate winRE par==
echo sel disk %diskNUM% >C:\"Program Files (x86)"\NECWinPartitionDP\recreate-w.script
echo create partition Primary size=%WINRESIZE% ID=DE94BBA4-06D1-4D40-A16A-BFD50179D6AC >>C:\"Program Files (x86)"\NECWinPartitionDP\recreate-w.script 
echo format quick LABEL="WinRE_DRV" >>C:\"Program Files (x86)"\NECWinPartitionDP\recreate-w.script
echo assign >>C:\"Program Files (x86)"\NECWinPartitionDP\recreate-w.script
echo exit >>C:\"Program Files (x86)"\NECWinPartitionDP\recreate-w.script
diskpart /s "C:\Program Files (x86)\NECWinPartitionDP\recreate-w.script"
IF ERRORLEVEL=0 (
ECHO %date% %time%- %errorlevel%  recreate winRE par SUCESS >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
) ELSE (
ECHO %date% %time%- %errorlevel%  recreate winRE par FAILED >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
EXIT /B 1 
)
del /f C:\"Program Files (x86)"\NECWinPartitionDP\recreate-w.script