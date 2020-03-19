@echo off
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
ECHO RAN SCAN ON %mydate%  :   %mytime% > movieList.txt
ECHO scanning...
for /d %%i in ("C:\Users\John Doe\Videos\*") do (
	CD "%%i"
	if not exist Trailers (
		CD "C:\Users\John Doe\Videos\youtube-dl"
		ECHO %%~NXi >> movieList.txt
	)	
)
CD "C:\Users\John Doe\Videos\youtube-dl"
ECHO opening list...
start notepad movieList.txt
