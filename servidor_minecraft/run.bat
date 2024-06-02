@echo off
REM Ejecutar el script de PowerShell

REM Establecer la ruta al script de PowerShell
set SCRIPT_PATH=%~dp0start.ps1

REM Ejecutar el script de PowerShell
PowerShell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_PATH%"

pause
