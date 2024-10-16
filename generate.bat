@echo off

set INIT_PATH="%~dp0"

cd "%~dp0"
rd /s /q "%~dp0generate_file"
mkdir "%~dp0generate_file"
echo INIT done!

xcopy "%~dp0source_file" "%~dp0generate_file" /s /e /y
mkdir "%~dp0generate_file\tools"
xcopy "%~dp0tools" "%~dp0generate_file\tools" /s /e /y
echo COPY done!

cd "%~dp0generate_file"
pyinstaller -F "%~dp0generate_file\SysyncWinClient.py"
copy "%~dp0generate_file\dist\SysyncWinClient.exe" "%~dp0generate_file"
echo COMPILE done!

cd "%~dp0.."
"%~dp0res\Inno\ISCC.exe" "%~dp0installer.iss"
echo GENERATE done!

pause