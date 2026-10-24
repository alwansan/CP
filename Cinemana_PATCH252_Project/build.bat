@echo off
setlocal
set "ROOT=%~dp0"
set "APKTOOL=%ROOT%tools\apktool_2.12.1.jar"
set "FRAME=%ROOT%tools\framework"
set "APP=%ROOT%app"
set "OUT=%ROOT%output\Cinemana_PATCH252_unsigned.apk"
if not exist "%ROOT%output" mkdir "%ROOT%output"
where java >nul 2>nul
if errorlevel 1 (
  echo ERROR: Java was not found. Install Java and try again.
  exit /b 1
)
if not exist "%APKTOOL%" (
  echo ERROR: APKTool jar is missing. Re-extract the complete ZIP.
  exit /b 1
)
if not exist "%FRAME%\1.apk" (
  echo ERROR: Bundled framework file is missing. Re-extract the complete ZIP.
  exit /b 1
)
echo Building PATCH252 project...
java -jar "%APKTOOL%" b -f -p "%FRAME%" -o "%OUT%" "%APP%"
if errorlevel 1 (
  echo Build failed. Review the error messages above.
  exit /b 1
)
echo.
echo Build completed:
echo %OUT%
echo This APK is unsigned. Sign it with Android SDK apksigner before installing.
endlocal
