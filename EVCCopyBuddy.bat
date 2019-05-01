::Written by Filip Darmanovic for the EVC Team @ TU Vienna. Use at your own risk.
@echo off
setlocal enabledelayedexpansion
    for /d %%D in (*) do (
	  SET t=%%~fD
      if not exist "%%D\Bewertungssheet_!t:~-8!.xlsx" if not exist "%%D\Bewertungssheet.xlsx" copy "Bewertungssheet.xlsx" "%%D\Bewertungssheet_!t:~-8!.xlsx"
	  if not exist "%%D\Anmerkungen_!t:~-8!.txt" echo.MNR: !t:~-8! >> "%%D\Anmerkungen_!t:~-8!.txt"
    )