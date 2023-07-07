@echo off
set /p choice=Kill WSL? Si[y] No[n] Risposta: 
if '%choice%'=='y' echo Fatto!
if '%choice%'=='n' exit
cls
TASKKILL /f /im wsl.exe
TASKKILL /f /im vmmemWSL
TASKKILL /f /im wslservice.exe
wsl --shutdown
cls
set /p choice=Pulire Ram?? Si[y] No[n] Risposta: 
if '%choice%'=='y' echo Fatto!
if '%choice%'=='n' exit
taskkill /f /im explorer.exe
start explorer.exe
taskkill /f /im msedge.exe
cls
set /p choice=Pulire Ancora?? [Richide logout] Si[y] No[n] Risposta: 
if '%choice%'=='n' exit
if '%choice%'=='y' shutdown /L /F
echo Ciaoo!