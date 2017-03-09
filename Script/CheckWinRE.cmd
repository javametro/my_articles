rem ==CheckWinRE.cmd====

rem ==This cmd script for Checking winRE State for win10==
rem V1.2
rem FAIL diskpart fail EXIT /B 1 winre not exsit /b 3 WINRE_DRV not exist /b 5 Two WinRE /b 6;SUCESS winre assign EXIT /B 0  winRE also exit /b 2


@echo on
setlocal enabledelayedexpansion

pushd C:\"Program Files (x86)"\NECWinPartitionDP\
:get system disk NUM
GetDiskNum.exe
if %ERRORLEVEL% == 0 (set /a diskNUM=0)
GetDiskNum.exe
if %ERRORLEVEL% == 1 (set /a diskNUM=1)
echo %diskNUM%

rem ==Check winRE state  ==
if exist C:\Recovery\WINRE\boot.sdi (
ECHO %date% %time%- %errorlevel% exit WINRE In C par can create WinRE >C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
EXIT /B 2
) else (
goto CheckWinRENUM

)

:CheckWinRENUM
SET /a NUM=0
echo sel disk 0 > "C:\Program Files (x86)\NECWinPartitionDP\LisPar.txt"
echo list par >>"C:\Program Files (x86)\NECWinPartitionDP\LisPar.txt"
for /f "usebackq tokens=1,2,3 delims= " %%i in (`"Diskpart /s LisPar.txt"`) do (
    if "%%k"=="‰ñ•œ" SET /a NUM=NUM+1
)
echo %NUM%

if %NUM% GTR 1 (
	ECHO %date% %time%- %errorlevel%  More than 1 WINRE_DRV exist >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
	EXIT /B 6
)

if %NUM% LSS 1 (
	ECHO %date% %time%- %errorlevel%  No WINRE_DRV exist >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
	EXIT /B 6
)

del /f C:\"Program Files (x86)"\NECWinPartitionDP\LisPar.txt

:SHOWWINRE
echo list vol >"C:\Program Files (x86)\NECWinPartitionDP\LisVol.txt"
for /f "usebackq tokens=1,2,3,4,5,6 delims= " %%i in (`"Diskpart /s LisVol.txt"`) do (
    if "%%k"=="WinRE_DRV" SET WINREsize=%%n
)

if not defined WINREsize (
	ECHO %date% %time%- %errorlevel%  WINRE_DRV not exist >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
	exit /B 5
)

if %WINREsize% LSS 1000 set /a WINREsize=1000
echo %WINREsize% >C:\"Program Files (x86)"\NECWinPartitionDP\winresize.txt

rem if not exist C:\"Program Files (x86)"\NECWinPartitionDP\winresize.txt (
rem	ECHO %date% %time%- %errorlevel%  WINRE_DRV not exist >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
rem	exit /B 5
rem )

for /f "usebackq tokens=1,2,3,4 delims= " %%i in (`"Diskpart /s LisVol.txt"`) do (
    if "%%k"=="WinRE_DRV" SET WINRE=%%j
)

echo %WINRE%
echo sel disk %diskNUM% >C:\"Program Files (x86)"\NECWinPartitionDP\show-winre.script
echo sel vol %WINRE% >>C:\"Program Files (x86)"\NECWinPartitionDP\show-winre.script
echo set id=de94bba4-06d1-4d40-a16a-bfd50179d6ac override >>C:\"Program Files (x86)"\NECWinPartitionDP\show-winre.script
echo assign >>C:\"Program Files (x86)"\NECWinPartitionDP\show-winre.script
echo exit >>C:\"Program Files (x86)"\NECWinPartitionDP\show-winre.script
diskpart /s "C:\Program Files (x86)\NECWinPartitionDP\show-winre.script"
IF ERRORLEVEL=0 (
ECHO %date% %time%- %errorlevel%  SHOW winRE par SUCESS >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
) else (
ECHO %date% %time%- %errorlevel%  SHOW winRE par FAILED >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
EXIT /B 1
)
rem del /f C:\"Program Files (x86)"\NECWinPartitionDP\show-winre.script
del /f C:\"Program Files (x86)"\NECWinPartitionDP\LisVol.txt

echo list vol >C:\"Program Files (x86)"\NECWinPartitionDP\LisVol1.txt
for /f "usebackq tokens=2,3,4 delims= " %%i in (`"Diskpart /s C:\"Program Files (x86)"\NECWinPartitionDP\LisVol1.txt"`) do (
    if "%%k"=="WinRE_DRV" SET WINRE1=%%j
)
echo %WINRE1%
attrib -h -s %WINRE1%:\Recovery
attrib -h -s %WINRE1%:\Recovery\WindowsRE
attrib -h -s %WINRE1%:\Recovery\WindowsRE\Winre.wim
attrib -h -s %WINRE1%:\Recovery\WindowsRE\boot.sdi
attrib -h -s %WINRE1%:\Recovery\WindowsRE\ReAgent.xml
attrib -h -s %WINRE1%:\Recovery\WindowsRE\ReCustomization.xml
del /f C:\"Program Files (x86)"\NECWinPartitionDP\LisVol1.txt

if exist %WINRE1%:\Recovery\WindowsRE\Winre.wim (
ECHO %date% %time%- %errorlevel% exist WINRE >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
EXIT /B 0
) else (
ECHO %date% %time%- %errorlevel% not exist WINRE >>C:\"Program Files (x86)"\NECWinPartitionDP\NECPAR.LOG
EXIT /B 3
)

popd C:\"Program Files (x86)"\NECWinPartitionDP\
::END



