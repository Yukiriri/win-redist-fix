@echo off & pushd %~dp0

echo VC++...
for %%i in (vc\*.exe) do (
    "%%i" /passive /norestart
)
echo VC++ OK

echo .NET...
for %%i in (dotnet\*.exe) do (
    "%%i" /passive /norestart
)
echo .NET OK

echo DX9.0c...
start /wait dx9.0c\DXSETUP.exe /silent
echo DX9.0c OK

pause
