@ECHO OFF
call %~dp0env_llvm.bat

clang --version

cmd /k