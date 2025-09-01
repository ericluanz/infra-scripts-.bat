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
echo SFC concluido!
echo.

:: 2. Verificando imagem do Windows com DISM
echo Executando DISM...
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo DISM concluido!
echo.

:: 3. Limpando arquivos temporarios
echo Limpando arquivos temporarios...
del /s /q %temp%\*
del /s /q C:\Windows\Temp\*
echo Limpeza de arquivos temporarios concluida!
echo.

:: 4. Reiniciando servicos criticos
echo Reiniciando servicos criticos...
net stop wuauserv
net start wuauserv
net stop bits
net start bits
echo Servicos reiniciados!
echo.

echo Reparos concluidos!
echo ==========================================

pause

