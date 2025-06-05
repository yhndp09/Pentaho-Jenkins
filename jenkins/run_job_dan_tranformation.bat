@echo off
REM Path ke Pentaho dan transformasi
set PDI_HOME=C:\Users\yohanes.pratama\Desktop\PENTAHO
set TRANS_FILE=C:\ProgramData\Jenkins\.jenkins\workspace\pentaho-pipeline\Transformation\get_data.ktr

cd %PDI_HOME%
call pan.bat /file:%TRANS_FILE% /level:Basic
