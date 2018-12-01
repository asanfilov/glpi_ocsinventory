@echo Batch copy Windows 10 Spotlight photos (lock screen images) for your desktop background.

@echo off
set MIN_FILESIZE_IN_KB=480
set WP_PATH="D:\Pictures\Wallpapers"
set /a MINSIZE=1024*MIN_FILESIZE_IN_KB
echo "Copying files bigger than %MINSIZE% bytes"

cd /d %APPDATA%\..\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
FOR  %%F IN (*.*) DO (if %%~zF geq %MINSIZE% (xcopy /y %%F %WP_PATH%\*.jpg))
pause