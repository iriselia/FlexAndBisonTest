rm -r Build
rm -r lib
rm -f *.sln
rm -f *.flex.c
rm -f *.bison.c

$COMSPEC \/c ".\CMake\DeleteSymLink.bat"