@ECHO OFF

:: Hacer versión Steam en RTTG-ES.zip
cd "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/RTTG-ES.zip" "."