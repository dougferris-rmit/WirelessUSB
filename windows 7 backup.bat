@echo off
SET profilepath=%cd%\Windows7
netsh wlan export profile name="RMIT-University" folder="%profilepath%"
echo Profile baacked up.
pause
