@echo off
echo Cleaning up cache directories...
for /d /r . %%d in (__pycache__) do @if exist "%%d" rd /s /q "%%d"

echo Initializing Git...
git init
REM Add all files (respecting .gitignore)
git add .
git commit -m "Initial commit for GitHub upload"

echo.
echo ===================================================
echo Project is now a Git repository!
echo To upload to GitHub:
echo 1. Create a NEW REPOSITORY on GitHub (empty).
echo 2. Copy the repository URL (e.g., https://github.com/user/repo.git)
echo 3. Run: git remote add origin YOUR_REPO_URL
echo 4. Run: git push -u origin master
echo ===================================================
pause
