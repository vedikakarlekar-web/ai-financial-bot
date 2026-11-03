@echo off
title Personal Finance Advisor Bot Launcher
cd /d "C:\Users\Siddhi\.gemini\antigravity\scratch\personal_finance_advisor"

echo =======================================================
echo   Starting Personal Finance Advisor Bot...
echo =======================================================

start "Flask Server" "C:\Users\Siddhi\.gemini\antigravity\scratch\tools\python311\python.exe" run.py
timeout /t 2 /nobreak >nul

start "Public Tunnel" "C:\Users\Siddhi\.gemini\antigravity\scratch\tools\cloudflared\cloudflared.exe" tunnel --url http://127.0.0.1:5000

echo.
echo Application is starting!
echo Opening Localhost in your browser: http://127.0.0.1:5000
echo.
timeout /t 2 /nobreak >nul
start http://127.0.0.1:5000
pause
