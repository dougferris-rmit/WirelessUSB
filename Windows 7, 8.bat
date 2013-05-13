echo off
SET profilepath=%cd%\Windows7
cd %profilepath%
netsh wlan add profile filename="Wireless Network Connection-RMIT-University.xml" user=current"
echo Profile added.
pause