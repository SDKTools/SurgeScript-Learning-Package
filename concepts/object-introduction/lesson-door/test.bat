@ECHO OFF
setlocal enabledelayedexpansion
set LINE=0

for /f "delims=" %%A in ('../../../surgescript/surgescript.exe script.ss') do (
    set /a LINE+=1
    set LINE!LINE!=%%A
)
echo LINE(X) refers to the lines of the stdout, example: LINE1 is the first line of the output
if "%LINE1%"=="closed" (
    echo Test 1 passed: LINE1 == closed
    if "%LINE2%"=="open" (
        echo Test 2 passed: LINE2 == open
        exit 0
    ) else (
        echo Test 2 failed: LINE2 isn't open
        exit 1
    )
) else (
    echo Test 1 failed isn't closed
    exit 1
)