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
%CURL% -o "teambase.cfg" -z "teambase.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/teambase.cfg"