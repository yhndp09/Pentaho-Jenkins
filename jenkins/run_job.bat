@echo off
echo === RUNNING JOB ===

REM Pentaho Kitchen location
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO
set JOB_FILE=%CD%\JOB\Job_test.kjb

cd /d %PDI_HOME%
echo Current DIR: %CD%
echo Running job file: %JOB_FILE%

call Kitchen.bat /file:%JOB_FILE% /level:Basic
