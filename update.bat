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
%CURL% -o "autoexec.cfg" -z "autoexec.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/autoexec.cfg"
%CURL% -o "team.cfg" -z "team.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/team.cfg"
%CURL% -o "demos.cfg" -z "demos.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/demos.cfg"
%CURL% -o "gren.cfg" -z "gren.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/gren.cfg"
%CURL% -o "bots.cfg" -z "bots.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/bots.cfg"
%CURL% -o "botsdm.cfg" -z "botsdm.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/botsdm.cfg"
%CURL% -o "show_keybinds.cfg" -z "show_keybinds.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/show_keybinds.cfg"
%CURL% -o "training_rcon.cfg" -z "training_rcon.cfg" "https://raw.githubusercontent.com/jakoch/csgo-config/master/training_rcon.cfg"
%CURL% -o "update.bat" -z "update.bat" "https://raw.githubusercontent.com/jakoch/csgo-config/master/update.bat"
