@echo off
REM ============================================================================
REM  MILITARY LOADER v2.1 - Maximum Compatibility Edition
REM  Works on ANY Windows computer without installations
REM  Optimized graphics using only built-in Windows commands
REM ============================================================================

setlocal enabledelayedexpansion

REM Set console properties
title MILITARY LOADER v2.1
mode con: cols=80 lines=25 2>nul

REM Try to set colors (gracefully fail on older systems)
color 0A 2>nul

REM Clear screen with dramatic effect
cls
ping 127.0.0.1 -n 1 >nul

REM ============================================================================
REM  ACCESS CODE VERIFICATION
REM ============================================================================

echo.
echo  +========================================================================+
echo  ^|                                                                        ^|
echo  ^|                        SECURE ACCESS REQUIRED                         ^|
echo  ^|                                                                        ^|
echo  ^|                     Please enter authorization code:                   ^|
echo  ^|                                                                        ^|
echo  +========================================================================+
echo.

set "access_code="
set "location="
set /p access_code="  Enter code: "

REM Validate access code
if "%access_code%"=="7298" (
    set "location=B epulet 1. emelet"
    echo.
    echo  ^>^> Access granted for Location 1
) else if "%access_code%"=="2784" (
    set "location=A epulet 1. emelet"
    echo.
    echo  ^>^> Access granted for Location 2
) else (
    echo.
    echo  ^>^> INVALID CODE - Access denied
    echo.
    pause
    exit /b 1
)

ping 127.0.0.1 -n 2 >nul
cls

REM ============================================================================
REM  ANIMATED HEADER
REM ============================================================================

echo.
echo  +========================================================================+
ping 127.0.0.1 -n 1 >nul
echo  ^|                                                                        ^|
ping 127.0.0.1 -n 1 >nul
echo  ^|                        MILITARY LOADER v2.1                            ^|
ping 127.0.0.1 -n 1 >nul
echo  ^|                     System Initialization Protocol                     ^|
ping 127.0.0.1 -n 1 >nul
echo  ^|                                                                        ^|
ping 127.0.0.1 -n 1 >nul
echo  +========================================================================+
echo.

REM Wait for dramatic effect
timeout /t 2 >nul 2>nul
if errorlevel 1 (
    ping 127.0.0.1 -n 3 >nul
)

REM ============================================================================
REM  LOADING STAGES CONFIGURATION
REM ============================================================================

REM Create output directory if it doesn't exist
if not exist "output" mkdir "output"

REM Clear any existing stage files
del "output\stage*.txt" >nul 2>nul

set "stage_count=20"
set "current_stage=0"

REM ============================================================================
REM  MAIN LOADING SEQUENCE
REM ============================================================================

REM Define stage names
set "stage_names=Establishing secure connection;Loading mission parameters;Initializing core systems;Loading security modules;Verifying system integrity;Authenticating credentials;Loading configuration files;Preparing runtime environment;Synchronizing database;Optimizing system performance;Loading user interface;Finalizing initialization;Connecting to satellite;Decrypting data streams;Validating access tokens;Loading tactical overlays;Preparing mission briefing;Synchronizing communications;Loading target data;Finalizing download"

REM Process all 20 stages
set "stage_index=0"
for %%s in (%stage_names%) do (
    set /a stage_index+=1
    set /a current_stage=!stage_index!
    set "stage_name=%%s"

echo  +-----------------------------------------------------------------------+
echo  ^| STAGE !current_stage! OF !stage_count!: !stage_name!...
echo  +-----------------------------------------------------------------------+
    echo.
    
    REM 1-minute loading animation with 12 progress updates (5 seconds each)
    echo   * Initializing...
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [###.......................................] 8%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [######....................................] 17%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [##########................................] 25%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [#############.............................] 33%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [################..........................] 42%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [####################......................] 50%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [#######################...................] 58%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [##########################................] 67%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [##############################............] 75%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [#################################.........] 83%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [####################################......] 92%%
    timeout /t 5 >nul 2>nul
    if errorlevel 1 ping 127.0.0.1 -n 6 >nul
    
    echo   Progress: [##########################################] 100%% ^ Complete!
  REM Create stage completion file
echo Stage !current_stage! completed > "output\stage!current_stage!.txt"
echo   ^>^> Stage file created: output\stage!current_stage!.txt
echo.

REM Brief pause between stages  
ping 127.0.0.1 -n 1 >nul
)

REM ============================================================================
REM  COMPLETION SEQUENCE
REM ============================================================================

echo.
echo  +========================================================================+
echo  ^|                                                                        ^|
echo  ^|                    ^ ALL SYSTEMS LOADED SUCCESSFULLY!                 ^|
echo  ^|                                                                        ^|
echo  ^|                        System Status: OPERATIONAL                     ^|
echo  ^|                        Security Level: MAXIMUM                        ^|
echo  ^|                        Ready for deployment                           ^|
echo  ^|                                                                        ^|
echo  +========================================================================+
echo.

REM Success animation
echo  ^>^> System ready...
ping 127.0.0.1 -n 1 >nul
echo  ^>^> Establishing connection...
ping 127.0.0.1 -n 1 >nul
echo  ^>^> All systems operational!
echo.

REM ============================================================================
REM  MISSION LOCATION DISPLAY
REM ============================================================================

echo.
echo  +========================================================================+
echo  ^|                                                                        ^|
echo  ^|                         MISSION BRIEFING                              ^|
echo  ^|                                                                        ^|
echo  ^|                     Proceed to: %location%                            ^|
echo  ^|                                                                        ^|
echo  ^|                    Systems ready for deployment                        ^|
echo  ^|                                                                        ^|
echo  +========================================================================+
echo.

echo  ^>^> All operatives proceed to designated coordinates
echo.
echo  Press any key to close this terminal...
pause >nul

REM Final pause
ping 127.0.0.1 -n 2 >nul

endlocal
exit /b 0
