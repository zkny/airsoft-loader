@echo off
REM Airsoft Loader - Windows Batch Launcher
REM This file makes it easy to run the loader on Windows

title Airsoft Loader

REM Try to find Python in common locations
where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    python "%~dp0loader.py"
    goto :end
)

where python3 >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    python3 "%~dp0loader.py"
    goto :end
)

REM Check for Python in Program Files
if exist "C:\Program Files\Python*\python.exe" (
    for /d %%i in ("C:\Program Files\Python*") do (
        "%%i\python.exe" "%~dp0loader.py"
        goto :end
    )
)

if exist "C:\Program Files (x86)\Python*\python.exe" (
    for /d %%i in ("C:\Program Files (x86)\Python*") do (
        "%%i\python.exe" "%~dp0loader.py"
        goto :end
    )
)

REM Python not found
echo.
echo ERROR: Python is not installed or not in PATH
echo.
echo Please install Python from https://www.python.org/downloads/
echo Make sure to check "Add Python to PATH" during installation
echo.
pause
exit /b 1

:end
REM Keep window open if there was an error
if %ERRORLEVEL% NEQ 0 pause
