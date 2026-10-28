@echo off
setlocal
pushd "%~dp0"
call DownloadDeps.cmd || goto :error
call build_htmlhelp_all.bat || goto :error
popd
exit /b 0
:error
popd
exit /b 1