@echo off
title Suporte de Rede
echo Resetando configuracoes de rede...
ipconfig /release
ipconfig /renew
ipconfig /flushdns
echo.
echo DNS limpo e IP renovado!
pause