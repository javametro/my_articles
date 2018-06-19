if /I %PROCESSOR_ARCHITECTURE%==AMD64 (SET ARCH=64) else (SET ARCH=32)
DEL HWCHECK.EXE
COPY /Y %ARCH%\HWCHECK.EXE

HWCHECK.EXE /f:mops

if exist hwcheck.log (
	for /f "skip=3 tokens=4 delims=:" %%i in (HWCheck.log) do @echo %%i > BTO.log
	del /f hwcheck.log
)

if exist computerhardwareids.exe (
	computerhardwareids.exe > test.log		
	for /f "eol={ skip=2 tokens=1,2*" %%i in (test.log) do @echo %%i %%j %%k >> computerinfo.log
	del /f test.log
)


