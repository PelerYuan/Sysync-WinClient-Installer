cd "%~dp0"
.\nssm install SysyncWin "%~dp0\..\SysyncWinClient.exe"
.\nssm start SysyncWin
pause