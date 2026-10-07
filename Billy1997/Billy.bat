@echo off
chcp 65001 >nul
cd /d "%~dp0"
call "%~dp0_find.cmd" || exit /b 1
start "" "%DBX%" -conf "%~dp0billy.conf" -nopromptfolder
