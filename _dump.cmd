SET Dmp=C:\xampp\mysql\bin\mysqldump.exe

SET Dateprefix=%date:~6,8%-%date:~3,2%-%date:~0,2%

SET MysqlAccount=--user=root --password=root

SET DRIVE=X:

SET FOLDER=\\server-1\d$\backup\ocs2

SET PASS=/user:Administrator adminpassword

net use %DRIVE% %FOLDER% %PASS%

cd\

%Dmp% %MysqlAccount% glpi > %DRIVE%\%Dateprefix%_glpi.sql

%Dmp% %MysqlAccount% ocsweb > %DRIVE%\%Dateprefix%_ocsweb.sql