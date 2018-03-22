@ECHO OFF
: If download URL is not defined (set through Jenkins, etc)
IF "%LLVM_URL%"=="" (
: Use a known default
set URL=http://releases.llvm.org/6.0.0/LLVM-6.0.0-win64.exe
) ELSE (
: Otherwise use the given URL.
set URL=%LLVM_URL%
)
: Set download package name.
set PKG=LLVM.exe

cd %~dp0
: If the package doesn't exist locally, download it.
if not exist %PKG% %~dp0curl.exe -L -o %~dp0%PKG% %URL%
: If the package has not been 'installed' install it.
if not exist %~dp0LLVM 7z x %PKG% -y -o%~dp0\LLVM

set PATH=%PATH%;%~dp0LLVM\bin