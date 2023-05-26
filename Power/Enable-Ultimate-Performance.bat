@ECHO OFF

:: Remove previous Ultimate Performace Plans
for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Ultimate"') do POWERCFG -D %%f > NUL

POWERCFG -DUPLICATESCHEME e9a42b02-d5df-448d-aa00-03f14749eb61 > NUL

for /f "tokens=4" %%f in ('powercfg -list ^| findstr /C:"Ultimate"') do POWERCFG -S %%f > NUL

PAUSE