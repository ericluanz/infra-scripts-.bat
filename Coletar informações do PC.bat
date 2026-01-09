@echo off
title Info do Sistema
set arquivo="%userprofile%\Desktop\Info_PC.txt"
echo Coletando dados...
echo NOME DO PC: %computername% > %arquivo%
echo USUARIO: %username% >> %arquivo%
echo. >> %arquivo%
echo --- HARDWARE --- >> %arquivo%
wmic bios get serialnumber >> %arquivo%
wmic computersystem get model >> %arquivo%
echo Arquivo "Info_PC.txt" criado na sua Área de Trabalho!
pause