@echo off
echo === START run_job.bat ===
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO
set JOB_FILE=C:\ProgramData\Jenkins\.jenkins\workspace\pentaho-pipeline\JOB\Job_test.kjb

echo PDI_HOME=%PDI_HOME%
echo JOB_FILE=%JOB_FILE%

cd /d %PDI_HOME% || (
    echo FAILED TO CD TO PDI_HOME
    exit /b 1
)

if not exist Kitchen.bat (
    echo Kitchen.bat NOT FOUND
    dir
    exit /b 1
)

echo Starting Kitchen.bat
call Kitchen.bat /file:%JOB_FILE% /level:Basic
