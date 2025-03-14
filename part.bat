@echo off
setlocal enabledelayedexpansion
echo select disk 0 > temp_script.txt
echo list disk >> temp_script.txt
diskpart /s temp_script.txt
echo.
echo Which disk would you like to use for the efi partition? (MUST BE AN INTERNAL DISK)
set /p disknum=Enter disk number: 
echo select disk %disknum% > temp_script.txt
echo list partition >> temp_script.txt
diskpart /s temp_script.txt
echo.
echo Which partition on Disk %disknum% would you like to use? (MUST BE PRIMARY AND HAVE AT LEAST 1GB FREE)
set /p partitionnum=Enter partition number: 
echo select disk %disknum% > temp_script.txt
echo select partition %partitionnum% >> temp_script.txt
echo shrink desired=1024 >> temp_script.txt
echo create partition primary >> temp_script.txt
echo format fs=fat32 quick >> temp_script.txt
echo assign letter=Z >> temp_script.txt
echo exit >> temp_script.txt
diskpart /s temp_script.txt
powershell -Command "Set-Volume -DriveLetter Z -NewFileSystemLabel 'EFI'"
timeout /t 2 /nobreak > nul
del temp_script.txt
