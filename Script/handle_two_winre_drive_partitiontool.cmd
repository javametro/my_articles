:Check WinRE NUM
SET /a NUM=0
echo sel disk 0 > "C:\Program Files (x86)\NECWinPartitionDP\LisPar.txt"
echo list par >>"C:\Program Files (x86)\NECWinPartitionDP\LisPar.txt"
for /f "usebackq tokens=1,2,3 delims= " %%i in (`"Diskpart /s LisPar.txt"`) do (
    if "%%k"=="‰ñ•œ" SET /a NUM=NUM+1
)
echo %NUM%

if %NUM% GTR 1 (
	EXIT /B 2
)

if %NUM% EQU 1 (
	EXIT /b 1
)

EXIT /B 0