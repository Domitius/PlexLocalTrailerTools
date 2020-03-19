@echo off
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
ECHO RUNNING PLEX LOCAL TRAILER DOWNLOAD ON %mydate%  :   %mytime% 
ECHO DOWNLOADING...
ECHO ----------------------------------------------
for /d %%i in ("C:\Users\John Doe\Desktop\sandboxTest\*") do (
  :: Go into movie folder
  CD "%%i"
	if not exist Trailers (
    :: move back to the youtube folder with youtube-dl
		CD "..\youtube-dl"
    ECHO.
    ECHO -------------------------------------------------------
    ECHO Downloading %%~NXi Trailer
    ECHO -------------------------------------------------------
    ECHO.
    :: Download first YouTube result from <movie folder title> Trailer
		".\youtube-dlNew.exe" "ytsearch1:%%~NXi Trailer"
    :: Make Trailers folder for the movie folder
		MKDIR "%%i\Trailers"
    :: Move freshly downloaded trailer into new Trailers folder
		MOVE "*.mp4" "%%i\Trailers\Theater Trailer #1.mp4"
	)	
)
ECHO.
ECHO FINISHED DOWNLOADING LOCAL PLEX TRAILERS
