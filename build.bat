setlocal

set VCTargetsPath=C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\VC\VCTargets
set R="C:\Program Files\Microsoft\ML Server\R_SERVER\bin\x64\R.exe"

:: set this to build in Debug mode:
::
:: set BuildConfiguration=Debug
:: set MonoBuildConfiguration=MonoInstallDebug

set BuildConfiguration=Release
set MonoBuildConfiguration=MonoInstall

for %%* in (.) do set _current_dirname=%%~nx*
if "%_current_dirname%" == "rClr" cd ..

%R% CMD check rClr

endlocal