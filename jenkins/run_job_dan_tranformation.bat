@echo off
echo === RUNNING TRANSFORMATION ===
call jenkins\run_transformation.bat

echo.
echo === RUNNING JOB ===
call jenkins\run_job.bat
