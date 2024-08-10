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

echo DX...
dx\directx_Jun2010_redist.exe /Q /T:%TEMP%\directx_Jun2010_redist
%TEMP%\directx_Jun2010_redist\DXSETUP.exe /silent
echo DX OK

pause
