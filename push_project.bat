@echo off
echo.
echo ==========================================================
echo    PG-DBDA PROJECT PULL/PUSH SYNC
echo ==========================================================
echo.

git add .
git commit -m "Final submission preparation: README update and cleanup"

echo Pushing to: https://github.com/AkshayPatil20001/Anti-Money-Laundering-Monitoring-System
echo.
echo NOTE: You may be asked to sign in via browser.
echo.

git push -u origin main

echo.
echo ==========================================================
echo    Deploy Complete!
echo ==========================================================
pause
