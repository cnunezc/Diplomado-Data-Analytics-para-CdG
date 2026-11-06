@echo off

title Envio Dashboard Peliculas

echo ==========================================
echo Generando correo Outlook...
echo ==========================================
echo.

cd /d "%~dp0"

"C:\Users\ceuta\Anaconda3\python.exe" enviar_correo.py

if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Ocurrio un problema durante la ejecucion.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [OK] Correo generado correctamente.
pause
