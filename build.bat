@echo off 
git checkout no_serializedfield

CALL :Build

git checkout add_serializedfield

CALL :Build

CALL :Build

@RD /S /Q "sobm\Builds"

git checkout master

:Build
start /b /wait "dummy " "C:\Program Files\Unity\Hub\Editor\2019.4.3f1\Editor\Unity.exe" -quit -batchmode -projectPath ".\sobm" -buildWindows64Player ./Builds/sobm.exe
start /min .\sobm\Builds\sobm.exe
timeout 6 >nul
echo.
echo =====================================
type %USERPROFILE%\Desktop\testlog\log.txt
echo.
echo =====================================
echo.
taskkill /f /im sobm.exe
del /S /Q %USERPROFILE%\Desktop\testlog\log.txt