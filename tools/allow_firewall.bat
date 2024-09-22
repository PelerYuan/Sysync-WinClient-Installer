cd "%~dp0"

:: 设置程序路径
set "ProgramPath=%~dp0..\SysyncWinClient.exe"

:: 删除现有规则（如果存在相同的规则名）
netsh advfirewall firewall delete rule name="AllowYourAppInbound"
netsh advfirewall firewall delete rule name="AllowYourAppOutbound"

:: 为程序添加防火墙入站规则（允许所有端口和协议）
netsh advfirewall firewall add rule name="AllowYourAppInbound" dir=in action=allow program="%ProgramPath%" enable=yes profile=domain,private,public

:: 为程序添加防火墙出站规则（允许所有端口和协议）
netsh advfirewall firewall add rule name="AllowYourAppOutbound" dir=out action=allow program="%ProgramPath%" enable=yes profile=domain,private,public

:: 提示成功

echo firewall setting success

pause

