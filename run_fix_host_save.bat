@echo off
setlocal
title 單人 co-po 地圖 轉換 社群伺服器專用地圖

echo 單人 co-po 地圖 轉換 社群伺服器專用地圖腳本
echo.
echo 前言
echo yomisana: 一失足千古恨，務必! 切記! 拜託! 拜託! 拜託! 再拜託! 記得複製一份出來以免你真的操作失誤還有得救，沒備份又失敗不要怪我，我也就不了你的地圖檔數據
echo yomisana: 一失足千古恨，務必! 切記! 拜託! 拜託! 拜託! 再拜託! 記得複製一份出來以免你真的操作失誤還有得救，沒備份又失敗不要怪我，我也就不了你的地圖檔數據
echo.
echo 免安裝 python
echo.
echo 原巴哈文章: "https://forum.gamer.com.tw/Co.php?bsn=71458&sn=3095"
echo 腳本懶人包巴哈文章:  沒寫...作者懶...(還沒有發布啦 哈哈!)
echo.
echo 有任何問題可以至 "http://dc.mjolnir.tw" 詢問
echo.

rem 設定 portable_python 資料夾位置
set PYTHON_DIR=.\portable_python

rem 設定 Python 執行檔位置
set PYTHON_EXECUTABLE=%PYTHON_DIR%\python.exe

rem 設定 Python 腳本檔案位置
set PYTHON_SCRIPT=%~dp0\fix-host-save.py

rem 請使用者輸入資料夾的設定檔路徑
echo 請將資料夾路徑下的內容與巴哈教學一致，以免無法修改!
set /p CONFIG_FILE_PATH=請輸入資料夾的名稱：

rem 請使用者輸入舊的ID
set /p OLD_ID=請輸入舊的ID：

rem 請使用者輸入新的ID
set /p NEW_ID=請輸入新的ID：

echo 批次檔翻譯:
echo 警告：執行此腳本將更改您的儲存檔案，可能會損壞您的遊戲數據。強烈建議在繼續之前備份您的地圖資料夾。如果您想繼續，請按 Enter 鍵。(yomisana: 一失足千古恨，務必! 切記! 拜託! 拜託! 拜託! 再拜託! 記得複製一份出來以免你真的操作失誤還有得救，沒備份又失敗不要怪我，我也就不了你的地圖檔數據)

rem 使用指定的 Python 執行檔執行腳本，並傳遞參數
%PYTHON_EXECUTABLE% %PYTHON_SCRIPT% uesave.exe %CONFIG_FILE_PATH% %NEW_ID% %OLD_ID% 

echo 如果轉移成功，沒有任何錯誤可以上傳至伺服器! 開心遊玩!
echo 有任何問題可以至 http://dc.mjolnir.tw 詢問
pause
endlocal
