rem @echo off
set current_dir=%~dp0
echo current directory is %current_dir%

if exist modules.log (
	del /f /q /a:h modules.log
)

pushd %windir%
if exist modules.log (
	xcopy /h /y modules.log %current_dir%
	attrib -h modules.log
) else (
	echo modules.log is not exist.
)

popd