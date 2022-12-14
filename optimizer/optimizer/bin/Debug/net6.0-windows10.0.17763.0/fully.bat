cls

@ECHO OFF



:START

cls

%homedrive%

cd %USERPROFILE%

cd..

set profiles=%cd%



for /f "tokens=* delims= " %%u in ('dir /b/ad') do (



cls

title Deleting %%u COOKIES. . .

if exist "%profiles%\%%u\cookies" echo Deleting....

if exist "%profiles%\%%u\cookies" cd "%profiles%\%%u\cookies"

if exist "%profiles%\%%u\cookies" del *.* /F /S /Q /A: R /A: H /A: A



cls

title Deleting %%u Temp Files. . .

if exist "%profiles%\%%u\Local Settings\Temp" echo Deleting....

if exist "%profiles%\%%u\Local Settings\Temp" cd "%profiles%\%%u\Local Settings\Temp"

if exist "%profiles%\%%u\Local Settings\Temp" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\Local Settings\Temp" rmdir /s /q "%profiles%\%%u\Local Settings\Temp"



cls

title Deleting %%u Temp Files. . .

if exist "%profiles%\%%u\AppData\Local\Temp" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Temp" cd "%profiles%\%%u\AppData\Local\Temp"

if exist "%profiles%\%%u\AppData\Local\Temp" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Temp" rmdir /s /q "%profiles%\%%u\AppData\Local\Temp"
del dir *.tmp /s

cls

title Deleting %%u LIXEIRA. . .

if exist "c:\$Recycle.Bin" echo Kobresanbing....
rd /q/s c:\$Recycle.Bin


cls

title Deleting %%u Temporary Internet Files. . .

if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" echo Deleting....

if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" cd "%profiles%\%%u\Local Settings\Temporary Internet Files"

if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\Local Settings\Temporary Internet Files"



cls

title Deleting %%u Temporary Internet Files. . .

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"



cls

title Deleting %%u WER Files. . .

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"





cls

title Deleting %Systemroot%\Temp

if exist "%Systemroot%\Temp" echo Deleting....

if exist "%Systemroot%\Temp" cd "%Systemroot%\Temp"

if exist "%Systemroot%\Temp" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%Systemroot%\Temp" rmdir /s /q "%Systemroot%\Temp"

cls

title Deleting %Systemroot%\installer

if exist "%Systemroot%\installer" echo Deleting....

if exist "%Systemroot%\installer" cd "%Systemroot%\installer"

if exist "%Systemroot%\installer" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%Systemroot%\installer" rmdir /s /q "%Systemroot%\installer"

cls

title Deleting %SYSTEMDRIVE%\Temp

if exist "%SYSTEMDRIVE%\Temp" echo Deleting....

if exist "%SYSTEMDRIVE%\Temp" cd "%SYSTEMDRIVE%\Temp"

if exist "%SYSTEMDRIVE%\Temp" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%SYSTEMDRIVE%\Temp" rmdir /s /q "%Systemroot%\Temp"



cls

title Deleting %%u FIREFOX TEMP. . .

if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" cd "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"

if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" rmdir /s /q "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"



cls

title Deleting %%u CHROME TEMP. . .

if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"

if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"



cls

title Deleting %%u EDGE TEMP. . .

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"



cls

title Deleting %%u EDGE COOKIES. . .

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"



cls

title Deleting %%u RDP TEMP. . .

if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" cd "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"

if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"



cls

title Deleting %%u OPERA TEMP. . .

if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" cd "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"

if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Caches" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"





cls

title Deleting %%u VIVALDI TEMP. . .

if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" echo Deleting....

if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"

if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A

if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"



)
cls

title Deleting %%u Prefetch. . .
del /f /q %windir%\Prefetch\*.*

cls