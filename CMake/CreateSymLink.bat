for %%* in (.) do set CurrDirName=%%~n*
echo %CurrDirName%

cmd /c mklink %CurrDirName%.sln Build\%CurrDirName%.sln
