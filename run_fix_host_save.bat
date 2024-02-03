@echo off
setlocal
title 單人 co-po 地圖 轉換 社群伺服器專用地圖

echo 單人 co-po 地圖 轉換 社群伺服器專用地圖腳本
echo.
echo 前言
echo yomisana: 一失足千古恨，務必! 切記! 拜託! 拜託! 拜託! 再拜託! 記得複製一份出來以免你真的操作失誤還有得救，沒備份又失敗不要怪我，我也救不了你的地圖檔數據
echo yomisana: 一失足千古恨，務必! 切記! 拜託! 拜託! 拜託! 再拜託! 記得複製一份出來以免你真的操作失誤還有得救，沒備份又失敗不要怪我，我也救不了你的地圖檔數據
echo.
echo 免安裝 python
echo 腳本版本號: 2024.02.03.1901
echo.
echo 原巴哈文章: "https://forum.gamer.com.tw/Co.php?bsn=71458&sn=3095"
echo.
echo 有任何問題可以至 "http://dc.mjolnir.tw" 詢問
echo.
echo 確認沒問題後...
pause
cls
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

rem 是否修復公會錯誤?
echo 是否修復公會錯誤?
echo [僅限co-po模式] 在co-po中，在移動保存之前，將所有權從co-po主機的角色轉移到另一個角色，並讓co-po主機的角色離開公會。徹底解決問題。當所有玩家因為沒有工作玩家來維持公會而失去保存資料時不起作用。
echo 新版本看起來是要 True 如果是相反請聯絡 dc:@yomisana 修改程式碼
set /p guild_fix=請輸入True/False(預設: True)：

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

echo 修正公會錯誤: %guild_fix% 

echo 將執行此指令(請確認是否數值設定正確):
echo %PYTHON_EXECUTABLE% %PYTHON_SCRIPT% uesave.exe %CONFIG_FILE_PATH% %NEW_ID% %OLD_ID% %guild_fix% 

echo 批次檔翻譯:
echo 警告：執行此腳本將更改您的儲存檔案，可能會損壞您的遊戲數據。強烈建議在繼續之前備份您的地圖資料夾。如果您想繼續，請按 Enter 鍵。(yomisana: 一失足千古恨，務必! 切記! 拜託! 拜託! 拜託! 再拜託! 記得複製一份出來以免你真的操作失誤還有得救，沒備份又失敗不要怪我，我也就不了你的地圖檔數據)

rem 使用指定的 Python 執行檔執行腳本，並傳遞參數
%PYTHON_EXECUTABLE% %PYTHON_SCRIPT% uesave.exe %CONFIG_FILE_PATH% %NEW_ID% %OLD_ID% %guild_fix% 

echo 如果轉移成功，沒有任何錯誤可以上傳至伺服器! 開心遊玩!
echo 有任何問題可以至 http://dc.mjolnir.tw 詢問
pause
endlocal
