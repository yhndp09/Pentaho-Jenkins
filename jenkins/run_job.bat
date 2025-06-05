@echo off

REM Pentaho Kitchen location
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO
set JOB_FILE=%CD%\JOB\Job_test.kjb

cd %PDI_HOME%
call Kitchen.bat /file:%JOB_FILE% /level:Basic
