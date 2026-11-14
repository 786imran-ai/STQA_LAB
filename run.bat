@echo off
title TestLab - Software Testing & QA Platform
echo ======================================================================
echo   TESTLAB - Integrated Software Testing & QA Platform
echo   Launching with Python 3.12...
echo ======================================================================
echo.

if exist "C:\Users\Imran\AppData\Local\Programs\Python\Python312\python.exe" (
    "C:\Users\Imran\AppData\Local\Programs\Python\Python312\python.exe" run.py
) else (
    py -3.12 run.py
)

if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Failed to start TestLab. Please ensure Python 3.12 is installed.
    pause
)

