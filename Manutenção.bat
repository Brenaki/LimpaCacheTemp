@echo off
cls
:menu
cls
color 02

echo Ola %username% voce executou isso no %computername%
date /t
echo _	
echo _
echo		MENU TAREFAS
echo =================================
echo *  1. Limpa Cache                *
echo *  2. Fazer Backup               *
echo *  3. Escanear Disco Local       *
echo *  4. Painel de Controle         *
echo *  5. Sair                       *
echo =================================

set /p opcao= Escolha uma opcao:
echo = = = = = = = = = = = = = = = = =
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
rd /S /Q %userprofile%\AppData\Local\Temp
rd /S /Q c:\$Recycle.bin
echo =================================
echo *	      Cache Limpo            *
echo =================================
exit

:opcao3
cls
echo =================================
echo *	   Escaneamento de disco      *
echo =================================
chkdsk c:
pause
goto menu

:opcao4
cls
control.exe
pause
goto menu

:opcao5
cls
exit

:opcao6
echo =======================================================
echo *	   Opcao Invalida! Escolha outra opcao do menu      *
echo =======================================================
pause
goto menu