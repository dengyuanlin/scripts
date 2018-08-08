::clear screen
cls
::to use !varname!
setlocal enabledelayedexpansion

set CurrentPATH=%~dp0
set LOGFILE=%CurrentPATH%path.log
set DESTDIR=%CurrentPATH%tempdir

@echo off

::@adb reboot bootloader

cd /d %CurrentPATH%

mkdir %DESTDIR%
::rem can also comment
rem use rd/del to delete dir
rd /s /q %DESTDIR%
del /s /q %DESTDIR%

set comport=com5
set /p comport=please input the port:

echo port=%comport% > ./%LOGFILE%
