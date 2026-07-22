@echo off
setlocal enabledelayedexpansion

set "PACKAGE_ID=fhir.do.core"
set "PACKAGE_VERSION=0.1.0"
set "CACHE=%USERPROFILE%\.fhir\packages\%PACKAGE_ID%#%PACKAGE_VERSION%"

set "PACKAGE_LABEL=%PACKAGE_ID%#%PACKAGE_VERSION%"

echo Installing %PACKAGE_LABEL% into local FHIR package cache...

set "SOURCE_DIR="
if exist "output\package" (
  set "SOURCE_DIR=output\package"
) else if exist "output" (
  set "SOURCE_DIR=output"
) else if exist "fsh-generated\resources" (
  set "SOURCE_DIR=fsh-generated\resources"
) else (
  echo ERROR: No package source found.
  echo Expected either output\package, output or fsh-generated\resources.
  exit /b 1
)

if exist "%CACHE%" (
  echo Removing existing cache folder: %CACHE%
  rmdir /s /q "%CACHE%"
)

mkdir "%CACHE%\package"

> "%CACHE%\package\package.json" (
  echo {
  echo   "name": "%PACKAGE_ID%",
  echo   "version": "%PACKAGE_VERSION%",
  echo   "tools-version": 3,
  echo   "type": "IG",
  echo   "canonical": "https://digital.msp.gob.do/fhir/core",
  echo   "title": "Guía Core FHIR RD",
  echo   "fhirVersions": ["4.0.1"],
  echo   "dependencies": {},
  echo   "author": "Ministerio de Salud Pública y Asistencia Social"
  echo }
)

xcopy /E /I /Y "%SOURCE_DIR%" "%CACHE%\package\" >nul
if %ERRORLEVEL% NEQ 0 (
  echo ERROR: Could not copy package files to the local FHIR cache.
  exit /b %ERRORLEVEL%
)

echo Done: %CACHE%\package
echo Now you can compile the IPS guide.
endlocal
