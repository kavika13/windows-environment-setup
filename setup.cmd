@ECHO OFF
SETLOCAL

SET homeSourceDirectory=%~dp0home
SET registrySourceDirectory=%~dp0registry

Robocopy.exe /E /NFL /NDL /NJS "%homeSourceDirectory%" "%UserProfile%"
FOR /F "DELIMS=" %%F IN ('DIR /B "%registrySourceDirectory%"') DO ECHO.Regedit.exe /S "%%~fF" & Regedit.exe /S "%%~fF"
