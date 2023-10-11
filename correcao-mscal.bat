@echo off
setlocal enabledelayedexpansion

echo. 
echo Desativando o Windows Defender
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

echo.
echo Copiando MSCAL.OCX para C:\Windows\SysWOW64
copy "%~dp0MSCAL.OCX" C:\Windows\SysWOW64

:: Localização do arquivo OCX
set OCXFile=C:\Windows\SysWOW64\MSCAL.OCX

echo. 
echo Confirmando existencia do arquivo
if not exist "%OCXFile%" (
    echo Arquivo OCX não encontrado em "%OCXFile%"
    exit /b 1
)

echo. 
echo Registrando o arquivo OCX usando regsvr32
regsvr32.exe "%OCXFile%"

echo. 
echo Verificando se a operacao foi bem-sucedida
if !errorlevel! neq 0 (
    echo 
    echo Falha ao registrar o arquivo OCX.
    exit /b 1
) else (
    echo. 
    echo Arquivo OCX registrado com sucesso.
    
    echo. 
    echo Adicionando o arquivo ao Windows Defender
    powershell -Command "Add-MpPreference -ExclusionPath 'C:\Windows\SysWOW64\MSCAL.OCX'"
)

echo. 
echo Ativando o Windows Defender
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $false"

echo.
echo Processo concluido com sucesso.
echo.
pause



