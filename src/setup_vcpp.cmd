
set VSCOMNTOOLS=%VS150COMNTOOLS%
::ATBTODO
::set VSCOMNTOOLS=%VS120COMNTOOLS%
@if "%VSCOMNTOOLS%"=="" VSCOMNTOOLS=%VS110COMNTOOLS%
@if "%VSCOMNTOOLS%"=="" goto error_no_VS110COMNTOOLSDIR
REM for instance C:\bin\VS2012\Common7\Tools\

set VSDEVENV="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat" x64
::ATBTODO
::set VSDEVENV="%VSCOMNTOOLS%..\..\VC\vcvarsall.bat"
@if not exist %VSDEVENV% goto error_no_vcvarsall
@call %VSDEVENV%
@goto end

:error_no_VS110COMNTOOLSDIR
@echo ERROR: setup_vcpp cannot determine the location of the VS Common Tools folder.
@goto end

:error_no_vcvarsall
@echo ERROR: Cannot find file %VSDEVENV%.
@goto end

:end

