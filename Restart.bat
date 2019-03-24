@echo off
cd pathHere
:onCrash
echo [%date% %time%] Restarting Main Map Server...
DSGame-server.exe 
echo Server was stopped or crashed!
GOTO onCrash