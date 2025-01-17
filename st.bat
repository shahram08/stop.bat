@echo off

rem Get time and date and put them into variables
for /F "tokens=2" %%i in ('date /t') do set date=%%i
set time=%time%

rem Debug
echo %date%
echo %time%

rem Set time and date in a loop with 900ms delay
:a
date %date%
time %time%
ping 1.1.1.1 -n 1 -w 690 > nul
goto a