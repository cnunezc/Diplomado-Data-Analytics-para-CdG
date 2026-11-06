@echo off

title Automatizacion Reporte Peliculas

echo ===================================================
echo Iniciando proceso automatizado...
echo ===================================================
echo.

:: Ir a la carpeta donde está el archivo .bat
cd /d "%~dp0"

:: Ejecutar el script Python
"C:\Users\ceuta\Anaconda3\python.exe" ejecutar_macro.py

:: Verificar si ocurrió un error
if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] El proceso finalizo con errores.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [OK] Proceso completado correctamente.
echo.
pause
