@ECHO OFF
SET PATH="\\fileserver\OCSInventory"
SET DISK=S
REM Folder name to store compressed .ocs files (use for batch import later):
SET OCS_FOLDER=%DISK%:\ocs_files
REM Folder name to store .xml inventory results files:
SET XML_FOLDER=%DISK%:\

net use %DISK%: %PFAD%
%DISK%:\OCS\OCSInventory.exe /local=%OCS_FOLDER% /xml=%XML_FOLDER%
echo INVENTORY FILE NAME IS: 
hostname
pause
REM http://wiki.ocsinventory-ng.org/index.php?title=Documentation:WindowsAgent#OCS_Inventory_NG_Agent_for_Windows_command_line_options.