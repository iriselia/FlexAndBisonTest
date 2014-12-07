mkdir Build
cd Build
"cmake.exe" -G "Visual Studio 12 2013" ../
cd ../

for %%* in (.) do set CurrDirName=%%~n*
echo %CurrDirName%

cmd /c mklink %CurrDirName%.sln Build\%CurrDirName%.sln
