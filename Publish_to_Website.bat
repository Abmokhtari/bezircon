@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==============================================
echo   Publishing Notes to abmokhtari.ir via Git
echo ==============================================
echo.
git add .
git commit -m "Publish new notes: %date% %time%"
git push origin master
echo.
echo ==============================================
echo   Done! Vercel is deploying your changes.
echo   Check your site in ~20 seconds at:
echo   https://abmokhtari.ir
echo ==============================================
timeout /t 5
