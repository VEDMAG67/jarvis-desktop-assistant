@echo off
echo ========================================
echo JARVIS EXE Builder (32-bit)
echo ========================================
echo.

echo Checking Python 3.10 32-bit installation...
py -3.10-32 --version
if errorlevel 1 (
    echo ERROR: Python 3.10 32-bit not found!
    echo Please install Python 3.10 32-bit from python.org
    pause
    exit /b 1
)

echo.
echo Installing dependencies...
py -3.10-32 -m pip install --upgrade pip
py -3.10-32 -m pip install -r requirements.txt

echo.
echo Building EXE file...
py -3.10-32 -m PyInstaller --onefile --windowed --icon=jarvis.ico --name JARVIS jarvis_app.py

echo.
echo ========================================
echo Build complete!
echo Your EXE is in: dist\JARVIS.exe
echo ========================================
pause
