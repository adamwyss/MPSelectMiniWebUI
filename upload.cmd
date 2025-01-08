REM @echo off

if "%1" == "" (
    echo %~n0 ipaddress
    goto _EXIT
)


curl -v -include --form "name=\"page\"" --form "filename=\"webui.html\"" --form file=@"C:\Source\MPSelectMiniWebUI\webui.html" "http://%1/page"

:_EXIT