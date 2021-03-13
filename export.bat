@echo off
echo Are you sure you want to export ?
pause
cd %~dp0
cscript .\ariawase\vbac.wsf decombine /binary ..\bin /source ..\src
exit