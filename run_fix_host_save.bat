@echo off
setlocal
title ��H co-po �a�� �ഫ ���s���A���M�Φa��

echo ��H co-po �a�� �ഫ ���s���A���M�Φa�ϸ}��
echo.
echo �e��
echo yomisana: �@�����d�j��A�ȥ�! ���O! ���U! ���U! ���U! �A���U! �O�o�ƻs�@���X�ӥH�K�A�u���ާ@���~�٦��o�ϡA�S�ƥ��S���Ѥ��n�ǧڡA�ڤ]�N���F�A���a���ɼƾ�
echo yomisana: �@�����d�j��A�ȥ�! ���O! ���U! ���U! ���U! �A���U! �O�o�ƻs�@���X�ӥH�K�A�u���ާ@���~�٦��o�ϡA�S�ƥ��S���Ѥ��n�ǧڡA�ڤ]�N���F�A���a���ɼƾ�
echo.
echo �K�w�� python
echo.
echo ��ګ��峹: "https://forum.gamer.com.tw/Co.php?bsn=71458&sn=3095"
echo �}���i�H�]�ګ��峹:  �S�g...�@���i...(�٨S���o���� ����!)
echo.
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

echo �妸��½Ķ:
echo ĵ�i�G���榹�}���N���z���x�s�ɮסA�i��|�l�a�z���C���ƾڡC�j�P��ĳ�b�~�򤧫e�ƥ��z���a�ϸ�Ƨ��C�p�G�z�Q�~��A�Ы� Enter ��C(yomisana: �@�����d�j��A�ȥ�! ���O! ���U! ���U! ���U! �A���U! �O�o�ƻs�@���X�ӥH�K�A�u���ާ@���~�٦��o�ϡA�S�ƥ��S���Ѥ��n�ǧڡA�ڤ]�N���F�A���a���ɼƾ�)

rem �ϥΫ��w�� Python �����ɰ���}���A�öǻ��Ѽ�
%PYTHON_EXECUTABLE% %PYTHON_SCRIPT% uesave.exe %CONFIG_FILE_PATH% %NEW_ID% %OLD_ID% 

echo �p�G�ಾ���\�A�S��������~�i�H�W�Ǧܦ��A��! �}�߹C��!
echo ��������D�i�H�� http://dc.mjolnir.tw �߰�
pause
endlocal
