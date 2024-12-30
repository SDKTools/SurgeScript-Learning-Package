@ECHO OFF
for /f "delims=" %%A in ('..\..\..\surgescript\surgescript.exe script.ss') do set RESULT=%%A
if "%RESULT%"=="Hello, World!" (
    echo Test 1 passed: '%RESULT%'=='Hello, World!'
    exit 0
) else (
    echo Test 1 failed: '%RESULT%'=='Hello, World!'
    exit 1
)