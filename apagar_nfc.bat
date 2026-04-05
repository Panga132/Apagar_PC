#@echo off
#title Apagado por NFC
#
#echo Terminando jornada, cerrando programas...
#timeout /t 3
#
#taskkill /f /im chrome.exe >nul 2>&1
#taskkill /f /im brave.exe >nul 2>&1
#taskkill /f /im spotify.exe >nul 2>&1
#taskkill /f /im discord.exe >nul 2>&1
#taskkill /f /im WhatsApp.exe >nul 2>&1
#taskkill /f /im code.exe >nul 2>&1
#taskkill /f /im LeagueClient.exe >nul 2>&1
#taskkill /f /im RiotClientServices.exe >nul 2>&1
#
#echo Programas cerrados correctamente...
#timeout /t 3
#
#echo Buen trabajo hoy 😎
#timeout /t 3
#
#shutdown /s /t 0