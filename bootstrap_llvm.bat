@ECHO OFF
: If LLVM URL is not defined (set through Jenkins, etc)
IF "%LLVM_URL%"=="" (
: Use a known default
set URL=https://prereleases.llvm.org/win-snapshots/LLVM-8.0.0-r339319-win64.exe
) ELSE (
: Otherwise use the given URL.
set URL=%LLVM_URL%
)
: Generate the package name based on URL. 
set PKG=LLVM-8.0.0-r339319-win64.exe

cd %~dp0
: If the package doesn't exist locally, download it.
if not exist %PKG% %~dp0curl.exe -L -o %~dp0%PKG% %URL%
: If the package has not been 'installed' install it.
if not exist %~dp0LLVM 7z x %PKG% -y -o%~dp0\LLVM

attrib +r %~dp0LLVM
attrib +h %~dp0.