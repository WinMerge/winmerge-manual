rem xsltproc...
set docbook_xsltproc=.\Tools\bin\xsltproc

rem HTML Help Compiler...
set docbook_hhc_exe=.\Tools\bin\hhc.exe

rem Build directory...
rem Use "." for the current directory.
if exist "%~dp0..\..\WinMerge.sln" (
  set docbook_build_path=..\..\Build\Manual
) else (
  set docbook_build_path=Build\Manual
)
