@echo off

:: CS:GO generates a config.cfg with invalid and outdated entries
:: This script removes those entries.

:: Example Console output:
::
:: Unknown command "cl_thirdperson"
:: Unknown command "tr_best_course_time"
:: Unknown command "tr_completed_training"
:: Unknown command "weapon_accuracy_logging"

findstr /V cl_thirdperson            config.cfg > config1.cfg
findstr /V tr_best_course_time      config1.cfg > config2.cfg
findstr /V tr_completed_training    config2.cfg > config3.cfg
findstr /V weapon_accuracy_logging  config3.cfg > config.cfg

del config1.cfg
del config2.cfg
del config3.cfg