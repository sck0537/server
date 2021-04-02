@echo off
title Windows Mode
:begin
if "%1"=="" goto menu
if "%1"=="default" goto default
if "%1"=="dark" goto dark
if "%1"=="light" goto light
:menu
cls
echo.
echo     1).default Mode
echo     2).dark Mode
echo     3).light Mode
echo.
choice /c 123 /m "choice:"
if %ERRORLEVEL%==3 goto light
if %ERRORLEVEL%==2 goto dark
if %ERRORLEVEL%==1 goto default
:default
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
goto end
:dark
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
goto end
:light
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 1 /f
goto end
:end
exit