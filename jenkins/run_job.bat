@echo off

REM Pentaho Kitchen location
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO

REM Path ke hasil clone GitHub oleh Jenkins
set JOB_FILE=C:\ProgramData\Jenkins\.jenkins\workspace\pentaho-pipeline\JOB\jobgabung.kjb

cd %PDI_HOME%
call Kitchen.bat /file:%JOB_FILE% /level:Basic
