#
# Makefile for v8
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_v8.zip

#
local-previous-target-dir := ~/workspace/ota_base/v8

#
local-miui-modified-apps := MiuiHome Mms Phone ThemeManager Settings MiuiSystemUI

# All apps from original ZIP, but has smali files chanded
local-modified-apps := MediaProvider UsbConnectionMode

# All apks from MIUI
local-miui-removed-apps     := MediaProvider 

# All apps need to be removed from original ZIP file
include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp other/build_V0230.prop $(ZIP_DIR)/system/build.prop
	#cp other/Generic.kl $(ZIP_DIR)/system/usr/keylayout/
	cp other/boot_V0230.img $(ZIP_DIR)/boot.img
	#cp other/StockSettings.apk $(ZIP_DIR)/system/app/
	#cp other/Settings_ex.apk $(ZIP_DIR)/system/app/

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

