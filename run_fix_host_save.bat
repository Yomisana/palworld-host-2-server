@echo off
setlocal
title ��H co-po �a�� �ഫ ���s���A���M�Φa��

echo ��H co-po �a�� �ഫ ���s���A���M�Φa�ϸ}��
echo.
echo �e��
echo yomisana: �@�����d�j��A�ȥ�! ���O! ���U! ���U! ���U! �A���U! �O�o�ƻs�@���X�ӥH�K�A�u���ާ@���~�٦��o�ϡA�S�ƥ��S���Ѥ��n�ǧڡA�ڤ]�Ϥ��F�A���a���ɼƾ�
echo yomisana: �@�����d�j��A�ȥ�! ���O! ���U! ���U! ���U! �A���U! �O�o�ƻs�@���X�ӥH�K�A�u���ާ@���~�٦��o�ϡA�S�ƥ��S���Ѥ��n�ǧڡA�ڤ]�Ϥ��F�A���a���ɼƾ�
echo.
echo �K�w�� python
echo �}��������: 2024.02.03.1901
echo.
echo ��ګ��峹: "https://forum.gamer.com.tw/Co.php?bsn=71458&sn=3095"
echo.
echo ��������D�i�H�� "http://dc.mjolnir.tw" �߰�
echo.
echo �T�{�S���D��...
pause
cls
echo ��������D�i�H�� "http://dc.mjolnir.tw" �߰�
echo.
rem �]�w portable_python ��Ƨ���m
set PYTHON_DIR=.\portable_python

rem �]�w Python �����ɦ�m
set PYTHON_EXECUTABLE=%PYTHON_DIR%\python.exe

rem �]�w Python �}���ɮצ�m
set PYTHON_SCRIPT=%~dp0\fix-host-save.py

rem �ШϥΪ̿�J��Ƨ����]�w�ɸ��|
echo �бN��Ƨ����|�U�����e�P�ګ��оǤ@�P�A�H�K�L�k�ק�!
set /p CONFIG_FILE_PATH=�п�J��Ƨ����W�١G

rem �ШϥΪ̿�J�ª�ID
set /p OLD_ID=�п�J�ª�ID�G

rem �ШϥΪ̿�J�s��ID
set /p NEW_ID=�п�J�s��ID�G

rem �O�_�״_���|���~?
echo �O�_�״_���|���~?
echo [�ȭ�co-po�Ҧ�] �bco-po���A�b���ʫO�s���e�A�N�Ҧ��v�qco-po�D���������ಾ��t�@�Ө���A����co-po�D�����������}���|�C�����ѨM���D�C��Ҧ����a�]���S���u�@���a�Ӻ������|�ӥ��h�O�s��Ʈɤ��_�@�ΡC
echo �s�����ݰ_�ӬO�n True �p�G�O�ۤϽ��p�� dc:@yomisana �ק�{���X
set /p guild_fix=�п�JTrue/False(�w�]: True)�G

if /i "%guild_fix%"== "f" (
    set guild_fix=False
) else if /i "%guild_fix%"== "n" (
    set guild_fix=False
) else if /i "%guild_fix%"== "no" (
    set guild_fix=False
) else if /i "%guild_fix%"== "false" (
    set guild_fix=False
) else (
    set guild_fix=True
)

echo �ץ����|���~: %guild_fix% 

echo �N���榹���O(�нT�{�O�_�ƭȳ]�w���T):
echo %PYTHON_EXECUTABLE% %PYTHON_SCRIPT% uesave.exe %CONFIG_FILE_PATH% %NEW_ID% %OLD_ID% %guild_fix% 

echo �妸��½Ķ:
echo ĵ�i�G���榹�}���N���z���x�s�ɮסA�i��|�l�a�z���C���ƾڡC�j�P��ĳ�b�~�򤧫e�ƥ��z���a�ϸ�Ƨ��C�p�G�z�Q�~��A�Ы� Enter ��C(yomisana: �@�����d�j��A�ȥ�! ���O! ���U! ���U! ���U! �A���U! �O�o�ƻs�@���X�ӥH�K�A�u���ާ@���~�٦��o�ϡA�S�ƥ��S���Ѥ��n�ǧڡA�ڤ]�N���F�A���a���ɼƾ�)

rem �ϥΫ��w�� Python �����ɰ���}���A�öǻ��Ѽ�
%PYTHON_EXECUTABLE% %PYTHON_SCRIPT% uesave.exe %CONFIG_FILE_PATH% %NEW_ID% %OLD_ID% %guild_fix% 

echo �p�G�ಾ���\�A�S��������~�i�H�W�Ǧܦ��A��! �}�߹C��!
echo ��������D�i�H�� http://dc.mjolnir.tw �߰�
pause
endlocal
