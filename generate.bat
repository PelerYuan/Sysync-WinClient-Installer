cd "%~dp0"
rd /s /q "%~dp0\generate_file"
mkdir "%~dp0\generate_file"
echo INIT done!

xcopy "%~dp0\source_file\" "%~dp0\generate_file" /s /e /y
mkdir "%~dp0\generate_file\tools"
xcopy "%~dp0\tools\" "%~dp0\generate_file\tools" /s /e /y
echo COPY done!

cd "%~dp0\generate_file"
pyinstaller -F "%~dp0\generate_file\SysyncWinClient.py"
copy "%~dp0\generate_file\dist\SysyncWinClient.exe" "%~dp0\generate_file"
echo COMPILE done!

pause