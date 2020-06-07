cd .

chcp 1252

if "%1"=="" ("D:\MATLAB\R2020a\bin\win64\gmake"  -f PN_generator_Tx.mk all) else ("D:\MATLAB\R2020a\bin\win64\gmake"  -f PN_generator_Tx.mk %1)
@if errorlevel 1 goto error_exit

exit 0

:error_exit
echo The make command returned an error of %errorlevel%
exit 1
