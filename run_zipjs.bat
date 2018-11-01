@echo off

for /r %%s in (*.zip) do (

    call zipjs.bat unzip -source "%%~fs" -destination "%%~dpns" -keep yes -force yes
) 
