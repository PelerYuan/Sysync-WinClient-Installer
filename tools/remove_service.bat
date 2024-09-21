cd "%~dp0"
.\nssm stop SysyncWin "%~dp0\..\SysyncWinClient.exe"
.\nssm remove SysyncWin confirm
pause