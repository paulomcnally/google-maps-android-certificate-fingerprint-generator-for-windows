@echo on
call keytool.cmd >> result.temp

FindStr /R /I "MD5" %~dp0\result.temp >> %~dp0\md5.txt
Del %~dp0\result.temp
set /p MyVar=< %~dp0\md5.txt &rem
DEL %~dp0\md5.txt

Call :TRIM %MyVar%

echo %MyVar% >>  %~dp0\result.txt
Set MyVar=
GoTo :EOF

:TRIM
Set MyVar=%*
GoTo :EOF