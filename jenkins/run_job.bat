@echo off

REM Lokasi Kitchen Pentaho kamu
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO

REM Lokasi file .kjb dari hasil clone repo GitHub oleh Jenkins
set JOB_PATH=%CD%\JOB\Job_test.kjb

cd %PDI_HOME%
call Kitchen.bat /file:%JOB_PATH% /level:Basic
