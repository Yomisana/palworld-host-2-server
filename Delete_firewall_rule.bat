@echo off

::自動授權"管理者權限"
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo 請求系統管理員權限...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
::自動授權"管理者權限"(程式碼結束，下方打上你的程式碼)

@echo off
echo 刪除 8211/tcp(如果有還在舊版的巴友) 與 8211/udp 的防火牆規則...
echo.

:: 刪除 8211/tcp 的輸入
netsh advfirewall firewall delete rule name="Palworld Allow Port 8211 TCP In(Yomisana)"

:: 刪除 8211/tcp 的輸出
netsh advfirewall firewall delete rule name="Palworld Port 8211 TCP Out(Yomisana)"

:: 刪除 8211/udp 的輸入
netsh advfirewall firewall delete rule name="Palworld Port 8211 UDP In(Yomisana)"

:: 刪除 8211/udp 的輸出
netsh advfirewall firewall delete rule name="Palworld Port 8211 UDP Out(Yomisana)"

echo 完成！防火牆規則已刪除。 五秒後自動關閉視窗
timeout /nobreak /t 5 >nul