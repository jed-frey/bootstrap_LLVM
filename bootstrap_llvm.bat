@ECHO OFF
: If LLVM URL is not defined (set through Jenkins, etc)
IF "%LLVM_URL%"=="" (
: Use a known default
set URL=https://github.com/llvm/llvm-project/releases/download/llvmorg-8.0.1/LLVM-8.0.1-win64.exe
) ELSE (
: Otherwise use the given URL.
set URL=%LLVM_URL%
)
: Generate the package name based on URL. 
set PKG=LLVM.exe

cd %~dp0
: If the package doesn't exist locally, download it.
if not exist %PKG% %~dp0curl.exe -L -o %~dp0%PKG% %URL%
: If the package has not been 'installed' install it.
if not exist %~dp0LLVM 7z x %PKG% -y -o%~dp0\LLVM

:: This doesn't require 7z, but does require a UAC user prompt.
: if not exist %~dp0LLVM LLVM.exe /S /D=%~dp0LLVM

attrib +r %~dp0LLVM
attrib +h %~dp0.