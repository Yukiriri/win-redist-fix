@echo off & chcp 65001 >nul
cd %~dp0

echo VC++...
for /r %%i in (vc\*.exe) do (
    "%%i" /passive /norestart
)
echo VC++ OK

echo .NET...
for /r %%i in (dotnet\*.exe) do (
    "%%i" /passive /norestart
)
echo .NET OK

echo DX9.0c...
start /wait dx9.0c\DXSETUP.exe /silent
echo DX9.0c OK

pause
