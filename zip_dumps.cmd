SET Zip="%ProgramFiles%\7-Zip\7z.exe"
SET Dateprefix=%date:~6,8%-%date:~3,2%-%date:~0,2%
SET folder=D:\backup\ocs2

cd %folder%

%Zip% a -t7z %Dateprefix%_dumps.7z *.sql -m0=PPMd

del *.sql
pause