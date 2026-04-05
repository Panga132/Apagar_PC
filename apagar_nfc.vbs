Set WshShell = CreateObject("WScript.Shell")

' Ventana 1
WshShell.Popup "Terminando jornada, bien hecho." & vbCrLf & "Cerrando programas...", 5, "Apagado por NFC", 64

' Cerrar programas
WshShell.Run "cmd /c taskkill /f /im chrome.exe", 0, True
WshShell.Run "cmd /c taskkill /f /im brave.exe", 0, True
WshShell.Run "cmd /c taskkill /f /im spotify.exe", 0, True
WshShell.Run "cmd /c taskkill /f /im discord.exe", 0, True
WshShell.Run "cmd /c taskkill /f /im WhatsApp.exe", 0, True
WshShell.Run "cmd /c taskkill /f /im code.exe", 0, True
WshShell.Run "cmd /c taskkill /f /im LeagueClient.exe", 0, True
WshShell.Run "cmd /c taskkill /f /im RiotClientServices.exe", 0, True

' Ventana 2
WshShell.Popup "Apagando computador...", 4, "Apagado por NFC", 64

' Apagar
WshShell.Run "cmd /c shutdown /s /t 0", 0, False