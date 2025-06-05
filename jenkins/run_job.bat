@echo off
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO
set JOB_FILE=C:\ProgramData\Jenkins\.jenkins\workspace\pentaho-pipeline\JOB\Job_test.kjb

cd /d %PDI_HOME%
call Kitchen.bat /file:%JOB_FILE% /level:Basic
