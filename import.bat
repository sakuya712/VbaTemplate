@echo off
echo Are you sure you want to import?
pause
cd %~dp0
cscript .\ariawase\vbac.wsf combine /binary ..\bin /source ..\src
exit