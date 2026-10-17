@echo off
chcp 65001 >nul
echo === Wetter-App: .exe bauen ===
where python >nul 2>nul && (set PY=py) || (set PY=py)
%PY% -m pip install --upgrade pywebview pyinstaller
if errorlevel 1 goto fehler
%PY% -m PyInstaller --onefile --windowed --name Wetter --icon "pc.ico" --add-data "index.html;." --add-data "icon-192.png;." app.py
if errorlevel 1 goto fehler
echo.
echo Fertig! Die App liegt hier: dist\Wetter.exe
pause
exit /b 0
:fehler
echo.
echo Etwas ist schiefgelaufen. Ist Python installiert (python.org, Haken bei "Add to PATH")?
pause
exit /b 1
