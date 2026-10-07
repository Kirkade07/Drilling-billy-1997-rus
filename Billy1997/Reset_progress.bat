@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Будут удалены прогресс (открытые карты) и таблица рекордов.
choice /m "Продолжить"
if errorlevel 2 exit /b 0
del /q "game\SETTINGS\SAVEGAME" 2>nul
del /q "game\SETTINGS\HISCORE" 2>nul
echo Готово.
pause
