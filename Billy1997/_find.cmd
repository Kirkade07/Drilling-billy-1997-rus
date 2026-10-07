@echo off
rem Ищет dosbox-x.exe в папке dosbox-x (в любой подпапке)
set "DBX="
if exist "%~dp0dosbox-x\dosbox-x.exe" set "DBX=%~dp0dosbox-x\dosbox-x.exe"
if not defined DBX for /r "%~dp0dosbox-x" %%F in (dosbox-x.ex?) do if not defined DBX set "DBX=%%F"
if not defined DBX (
  echo Не найден dosbox-x.exe.
  echo Скачайте портативный DOSBox-X с https://dosbox-x.com/ и распакуйте в папку dosbox-x
  pause
  exit /b 1
)
if not exist "%~dp0game\BILLY.EXE" (
  echo Не найдена игра: положите файлы игры в папку game, чтобы был game\BILLY.EXE
  pause
  exit /b 1
)
exit /b 0
