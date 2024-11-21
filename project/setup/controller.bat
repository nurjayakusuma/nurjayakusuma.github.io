
IF "%~1"=="printing" (
    if not exist C:\Users\organizer\Videos\petho\pethobooth sistem\setup\DONE.txt (C:\Users\organizer\Videos\petho\pethobooth sistem\setup\print.bat)
)

IF "%~1"=="session_end" (
    if exist C:\Users\organizer\Videos\petho\pethobooth sistem\setup\DONE.txt (C:\Users\organizer\Videos\petho\pethobooth sistem\setup\start.bat)
    if exist C:\Users\organizer\Videos\petho\pethobooth sistem\setup\DONE.txt (DEL C:\Users\organizer\Videos\petho\pethobooth sistem\setup\DONE.txt)
)
