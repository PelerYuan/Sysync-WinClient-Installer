@echo off
cd "%~dp0"
rd /s /q "%~dp0\generate_file"
mkdir "%~dp0\generate_file"
rd /s /q "%~dp0\source_file"
mkdir "%~dp0\source_file"
rd /s /q "%~dp0\Output"
mkdir "%~dp0\Output"
echo RESET done!
pause