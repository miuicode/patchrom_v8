@echo off

if not "%P4ROOT%" == "" goto DoInstall
echo P4ROOT not set need by this script
goto end

:DoInstall
if exist %P4ROOT%\sw\tools\ddk\nt6\6001.18002\redist\winusb\x86\WinUSBCoInstaller.dll goto DoCopy
echo NT DDK at //sw/tools/ddk/nt6/6001.18002/... is not synced
goto end

:DoCopy
if "%USB_INSTALL_DIR%" == "" set USB_INSTALL_DIR=c:\temp\nvidia_usb_drivers
if not exist %USB_INSTALL_DIR%  goto Start
echo first, remove existing directory %USB_INSTALL_DIR%
RMDIR /S /Q %USB_INSTALL_DIR%
:Start
mkdir %USB_INSTALL_DIR%
mkdir %USB_INSTALL_DIR%\i386

xcopy %P4ROOT%\sw\mobile\main\utils\usbpcdriver\NvidiaUsb.inf  %USB_INSTALL_DIR%
xcopy %P4ROOT%\sw\tools\ddk\nt6\6001.18002\redist\wdf\x86\*.dll  %USB_INSTALL_DIR%\i386
xcopy %P4ROOT%\sw\tools\ddk\nt6\6001.18002\redist\winusb\x86\*.dll  %USB_INSTALL_DIR%\i386

:end
