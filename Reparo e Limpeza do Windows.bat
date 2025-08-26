@echo off
title Reparar e Limpar Windows
color 0A

echo ==========================================
echo      Reparando e limpando Windows
echo ==========================================

:: 1. Verificando arquivos do sistema
echo.
echo Executando SFC...
sfc /scannow
echo SFC concluído!
echo.

:: 2. Verificando imagem do Windows com DISM
echo Executando DISM...
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo DISM concluído!
echo.

:: 3. Limpando arquivos temporários
echo Limpando arquivos temporários...
del /s /q %temp%\*
del /s /q C:\Windows\Temp\*
echo Limpeza de arquivos temporários concluída!
echo.

:: 4. Reiniciando serviços críticos
echo Reiniciando serviços críticos...
net stop wuauserv
net start wuauserv
net stop bits
net start bits
echo Serviços reiniciados!
echo.

echo Reparos concluídos!
echo ==========================================

pause
