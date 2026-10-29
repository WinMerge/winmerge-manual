@echo off
setlocal
set "path=%ProgramFiles%\7-zip;%ProgramFiles(x86)%\7-zip;%path%"
pushd "%~dp0"
call DownloadDeps.cmd || goto :error
call build_htmlhelp_all.bat || goto :error
popd
exit /b 0
:error
popd
exit /b 1