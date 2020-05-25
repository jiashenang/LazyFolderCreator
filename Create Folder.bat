@echo off
set /p id="Enter folder name: "

for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%%MyDate:~4,2%%MyDate:~6,2%


echo %id%
echo %today%

set name=%today% - %id%

echo %name%


rem change path here for where to put the file.
set basePath=%userprofile%\documents

echo %basePath%

set newPath=%basePath%\%name%

echo %newPath%
mkdir "%newPath%"

%SystemRoot%\explorer.exe "%newPath%"

