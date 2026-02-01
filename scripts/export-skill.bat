@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

REM ============================================================================
REM Export ALSKai De-AI Writer Skill Package (Windows)
REM ============================================================================
REM This script creates a .skill package file from the extracted skill folder
REM ============================================================================

set "RED=[0;31m"
set "GREEN=[0;32m"
set "YELLOW=[1;33m"
set "BLUE=[0;34m"
set "NC=[0m"

set "SKILL_NAME=alskai-deai-writer"
set "SKILL_VERSION=v1.1.0"
set "SKILL_FOLDER=releases\extracted-skill\alskai-deai-writer-%SKILL_VERSION%"
set "OUTPUT_FOLDER=releases"
set "TEMP_FOLDER=.temp\export"

echo ============================================================
echo  Export ALSKai De-AI Writer Skill Package (%SKILL_VERSION%)
echo ============================================================
echo.

REM Check if skill folder exists
if not exist "%SKILL_FOLDER%" (
    echo Error: Skill folder not found: %SKILL_FOLDER%
    echo Please run this script from the project root directory.
    exit /b 1
)

REM Check if SKILL.md exists
if not exist "%SKILL_FOLDER%\SKILL.md" (
    echo Error: SKILL.md not found in %SKILL_FOLDER%
    exit /b 1
)

REM Create output folder if not exists
if not exist "%OUTPUT_FOLDER%" mkdir "%OUTPUT_FOLDER%"
if not exist "%TEMP_FOLDER%" mkdir "%TEMP_FOLDER%"

REM Create version-specific folder in temp
set "TEMP_VERSION_FOLDER=%TEMP_FOLDER%\%SKILL_NAME%-%SKILL_VERSION%"
if not exist "%TEMP_VERSION_FOLDER%" mkdir "%TEMP_VERSION_FOLDER%"

echo [YELLOW]📦 Preparing skill package...[NC]
copy "%SKILL_FOLDER%\SKILL.md" "%TEMP_VERSION_FOLDER%\SKILL.md" >nul
echo [GREEN]✅ SKILL.md copied[NC]

REM Create .skill file (it's just a ZIP file with .skill extension)
set "SKILL_FILE=%OUTPUT_FOLDER%\%SKILL_NAME%-%SKILL_VERSION%.skill"

echo [YELLOW]📦 Creating skill package...[NC]

REM Remove old skill file if exists
if exist "%SKILL_FILE%" (
    del "%SKILL_FILE%" >nul
    echo [GREEN]🗑️  Removed old skill file[NC]
)

REM Create the skill package using PowerShell (more reliable on Windows)
powershell -Command "
$shell = New-Object -ComObject Shell.Application
$zip = $shell.NameSpace('%SKILL_FILE%')
if (Test-Path '%SKILL_FILE%') { Remove-Item '%SKILL_FILE%' }
$zip.CopyHere('%TEMP_VERSION_FOLDER%')
Start-Sleep -Seconds 2
"

echo [GREEN]✅ Skill package created[NC]

echo.
echo ============================================================
echo [GREEN]✅ Skill package created successfully![NC]
echo ============================================================
echo.
echo [BLUE]📁 Location:[NC] %SKILL_FILE%
echo [BLUE]🏷️  Version:[NC] %SKILL_VERSION%
echo.

REM Cleanup temp folder
echo [YELLOW]🧹 Cleaning up...[NC]
if exist "%TEMP_FOLDER%" rmdir /s /q "%TEMP_FOLDER%" 2>nul
echo [GREEN]✅ Temp files cleaned[NC]

echo.
echo [GREEN]🎉 Ready to publish![NC]
echo.
echo [YELLOW]Next steps:[NC]
echo   1. Test the skill package in Claude Code
echo   2. Commit changes: git add . ^&^& git commit -m 'Add style learner feature'
echo   3. Create tag: git tag v1.1.0
echo   4. Push: git push ^&^& git push --tags
echo   5. Create GitHub release with the .skill file
echo.
echo [BLUE]Good luck! 🚀[NC]

endlocal
