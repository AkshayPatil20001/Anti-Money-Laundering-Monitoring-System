@echo off
echo Preparing to push to GitHub...

REM Add any uncommitted changes
git add .
git commit -m "Updated README and removed standalone scripts for CDAC portfolio"

REM Set remote (will fail safely if already exists)
git remote add origin https://github.com/AkshayPatil20001/Anti-Money-Laundering-Monitoring-System.git 2>nul

echo.
echo ===================================================
echo Pushing code to: https://github.com/AkshayPatil20001/Anti-Money-Laundering-Monitoring-System
echo.
echo You will be asked to sign in to GitHub in the browser.
echo ===================================================
timeout /t 3

git push -u origin main

echo.
pause
