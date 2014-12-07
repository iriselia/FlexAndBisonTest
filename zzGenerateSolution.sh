mkdir -p Build
cd Build
"cmake.exe" -G "Visual Studio 12 2013" ../
cd ../

$COMSPEC \/c ".\CMake\CreateSymLink.bat"