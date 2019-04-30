::Written by Filip Darmanovic for the EVC Team @ TU Vienna. Use at your own risk.
@echo off
setlocal enabledelayedexpansion
    for /d %%D in (*) do (
	  SET t=%%~fD
      if not exist "%%D\Bewertungssheet.xlsx" copy "Bewertungssheet.xlsx" "%%~fD"
	  if not exist "%%D\Anmerkungen.txt" echo.MNR: !t:~-8! >> "%%D\Anmerkungen.txt"
    )