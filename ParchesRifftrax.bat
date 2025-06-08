@ECHO OFF

:: Hacer versión Mac Steam en RTTG-ES-MAC.zip
xcopy "ArchivosMac" "Main" /s /y
cd "Main"
COPY "config.dat" "RiffTraxTheGame_Data"
:: Poner cosas que pasar en repositorio
cd ..
cd ..
xcopy "Cosas que pasar" "RiffTrax-The-Game-Spanish/Main" /s /y
cd "RiffTrax-The-Game-Spanish/Main/RiffTraxTheGame_Data"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../../Zips/RTTG-ES-MAC.zip" "."
:: Hacer versión Steam en RTTG-ES.zip
DEL "config.dat"
cd ..
cd ..
xcopy "ArchivosWindows" "Main" /s /y
cd "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/RTTG-ES.zip" "."
:: Borrar cosas que pasar
cd "RiffTraxTheGame_Data/StreamingAssets/RiffForMe"
RD "At_Your_Fingertips_Sugar_And_Spice_Clip001" /q /s
RD "How_To_Have_A_Moneymaking_Garage_Sale-Clip001" /q /s
RD "How_To_Have_A_Moneymaking_Garage_Sale-Clip002" /q /s
RD "How_To_Have_A_Moneymaking_Garage_Sale-Clip003" /q /s
RD "How_To_Have_A_Moneymaking_Garage_Sale-Clip004" /q /s
RD "Nestor_The_Long_Eared_Christmas_Donkey_Clip001" /q /s
RD "Nestor_The_Long_Eared_Christmas_Donkey_Clip002" /q /s
RD "Storytelling_Can_You_Tell_It_In_Order-Clip001" /q /s
RD "Storytelling_Can_You_Tell_It_In_Order-Clip002" /q /s
RD "Storytelling_Can_You_Tell_It_In_Order-Clip003" /q /s
RD "Yes_Virginia_There_Is_A_Santa_Claus_Clip001" /q /s