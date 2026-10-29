@echo off
setlocal
set "path=%ProgramFiles%\7-zip;%ProgramFiles(x86)%\7-zip;%path%"
pushd "%~dp0"
set "downloadsdir=build\WinMergeManualDeps"
if not exist "%downloadsdir%" mkdir "%downloadsdir%"

set "toolszip=%downloadsdir%\winmerge_manual_build_tools.zip"
if not exist "%toolszip%" powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest 'https://github.com/WinMerge/winmerge/releases/download/winmerge_manual_another_build_tools_v2/winmerge_manual_another_build_tools_v2.zip' -OutFile '%CD%\%toolszip%'"
if errorlevel 1 goto :error
7z x "%toolszip%" -aoa -oTools
if errorlevel 1 goto :error

set "applocalezip=%downloadsdir%\SBAppLocale_ENG.zip"
if not exist "%applocalezip%" powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest 'http://www.magicnotes.com/steelbytes/SBAppLocale_ENG.zip' -OutFile '%CD%\%applocalezip%'"
if errorlevel 1 goto :error
7z x "%applocalezip%" -aoa -oTools
if errorlevel 1 goto :error

echo Manual build tools are ready.
goto :end

:error
echo Failed to download or extract manual build tools.
exit /b 1

:end
popd