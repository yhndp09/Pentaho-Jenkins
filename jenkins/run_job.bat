@echo off

REM Lokasi folder Kitchen Pentaho di lokal
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO

REM Jalankan job dari hasil clone GitHub (Jenkins workspace)
set JOB_FILE=%CD%\JOB\Job_test.kjb

echo Running job: %JOB_FILE%
cd %PDI_HOME%
call Kitchen.bat /file:%JOB_FILE% /level:Basic
