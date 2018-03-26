@echo off

SET CURL_BINARY="tools\curl\curl.exe"
SET CURL=%CURL_BINARY% --insecure

::  
:: curl -o "$file" -z "$file" "$uri"
::
:: -o = write output to file
:: -z = filetime-based download condition (download file only, if newer)
:: -v = verbose
::
%CURL% -o "team.cfg" -z "team.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/team.cfg"
%CURL% -o "demos.cfg" -z "demos.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/demos.cfg"