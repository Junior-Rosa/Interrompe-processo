@echo off
set PROCNAME=nome_do_processo.exe
set APPPATH=caminho_do_aplicativo.exe

tasklist | find /i "%PROCNAME%" >nul 2>&1
if errorlevel 1 (
    echo O processo %PROCNAME% não está sendo executado.
) else (
    echo Parando o processo %PROCNAME%...
    taskkill /im %PROCNAME% /f >nul 2>&1
)

echo Executando o aplicativo %APPPATH%...
start "" "%APPPATH%"
