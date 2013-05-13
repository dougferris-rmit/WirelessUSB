echo off
SET profilepath=%cd%\Windows7
cd %profilepath%
netsh wlan add profile filename="RMITWireless.xml user=current"
echo Profile added.
pause