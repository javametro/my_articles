@echo off
set HOME=%homedrive%%homepath%
set DESKTOP=%userprofile%\Desktop
set DOCUMENTS=%userprofile%\Documents
set DOWNLOADS=%userprofile%\DOWNLOADS

pushd %DESKTOP%
if not exist %userdomain% (
	mkdir %userdomain%
)

xcopy /S /E /C /Y %DOCUMENTS% %userdomain%
xcopy /S /E /C /Y %DOWNLOADS% %userdomain%
xcopy /s /E /C /Y %DESKTOP% %userdomain%

popd
REM %USREPROFILE% Desktop, Documents, Downloads
pause


