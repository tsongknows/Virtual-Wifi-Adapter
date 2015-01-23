@echo off
title By tsong
fsutil>nul 
if errorlevel 1 mode con:cols=77 lines=4
fsutil>nul 
if errorlevel 1 color f4
fsutil>nul 
if errorlevel 1 echo 			      WARNING!!!
fsutil>nul 
if errorlevel 1 echo 		    Do not have administrator privileges 
fsutil>nul 
if errorlevel 1 echo		    Please turn off this program and re-run as administrator
fsutil>nul 
if errorlevel 1 pause
fsutil>nul 
if errorlevel 1 exit
:OK
echo 		      ********************************
echo 		      *     Virtual Wifi Adapter     *
echo 		      ********************************
echo.

ECHO 1£¬Create a virtual AP (Only once)¡£
ECHO 2£¬Start AP £¬(Use this when AP is created)
ECHO 3£¬Stop AP
ECHO x£¬Exit¡£

echo.
set /p Choose=Choose:

if %Choose% ==1  goto s1
if %Choose% ==2  goto s2
if %Choose% ==3  goto s3
if %Choose% ==x  goto exit

:s1
echo Start creating, please follow the tips on screen...
echo SSID is the name of your virtual wifi adapter.
set /p SSID=Now set the SSID:
echo Password should be at least 8 characters in length, Only numbers, letters and underscores are allowed.
set /p Password=Now Set the password:
netsh wlan set hostednetwork mode=allow ssid="%SSID%" key="%Password%"
goto :ok

:s2
cls
netsh wlan start hostednetwork
goto :ok

:s3
cls
netsh wlan stop hostednetwork
goto :ok
