@echo off

::�۰ʱ��v"�޲z���v��"
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo �ШD�t�κ޲z���v��...
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
::�۰ʱ��v"�޲z���v��"(�{���X�����A�U�襴�W�A���{���X)


echo ���\ 8211/tcp �P 8211/udp ����J�M��X... (�ګܰQ��Windows ��������...by yomisana)
:: ���\ 8211/udp ����J
netsh advfirewall firewall add rule name="Palworld Port 8211 UDP In(Yomisana)" dir=in action=allow protocol=UDP localport=8211

:: ���\ 8211/udp ����X
netsh advfirewall firewall add rule name="Palworld Port 8211 UDP Out(Yomisana)" dir=out action=allow protocol=UDP localport=8211

echo �����I������W�h�w�K�[�C �����۰���������
timeout /nobreak /t 5 >nul