
ADEVICE="m31s"
BDEVICE="a51"
CDEVICE="m21"
EDEVICE="gta4xl"
FDEVICE="m31"

# normal seting
export OF_USE_GREEN_LED=0
export FOX_USE_NANO_EDITOR=1
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_SKIP_FBE_DECRYPTION=1
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
export OF_MAINTAINER=pachadomenic
export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
export TW_DEFAULT_LANGUAGE="en"
export LC_ALL="C"
export OF_FLASHLIGHT_ENABLE=0
export ALLOW_MISSING_DEPENDENCIES=true
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export FOX_ASH_IS_BASH=1
export FOX_USE_XZ_UTILS=1
export OF_ENABLE_LPTOOLS=1
export OF_PATCH_AVB20=1
export FOX_USE_SPECIFIC_MAGISK_ZIP=~/magisk.zip
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1


# maintanier thingys
export FOX_VERSION=R11.1_2
export OF_MAINTAINER=pachadomenic

#Scaling fix

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w \"$FDEVICE\")
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w \"$FDEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	export OF_SCREEN_H=2340
	export OF_STATUS_H=82
	export OF_STATUS_INDENT_LEFT=60
	export OF_STATUS_INDENT_RIGHT=60
	export OF_CLOCK_POS=1
else
fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w \"$ADEVICE\")
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$ADEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w \"$ADEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$ADEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$BDEVICE" -o "$FOX_BUILD_DEVICE" = "$ADEVICE" ]; then
export OF_SCREEN_H=2400
export OF_STATUS_H=100
export OF_STATUS_INDENT_LEFT=60
export OF_STATUS_INDENT_RIGHT=60
export OF_CLOCK_POS=1
else
fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w \"$BDEVICE\")
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$BDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w \"$BDEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$BDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$CDEVICE" -o "$FOX_BUILD_DEVICE" = "$BDEVICE" ]; then
export OF_SCREEN_H=2400
export OF_STATUS_H=98
export OF_STATUS_INDENT_LEFT=60
export OF_STATUS_INDENT_RIGHT=60
export OF_CLOCK_POS=1
else
fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w \"$CDEVICE\")
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$CDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w \"$CDEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$CDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$CDEVICE" -o "$FOX_BUILD_DEVICE" = "$CDEVICE" ]; then
export OF_SCREEN_H=2340
export OF_STATUS_H=85
export OF_STATUS_INDENT_LEFT=60
export OF_STATUS_INDENT_RIGHT=60
export OF_CLOCK_POS=1
else
fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w \"$EDEVICE\")
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$EDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w \"$EDEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$EDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$EDEVICE" -o "$FOX_BUILD_DEVICE" = "$EDEVICE" ]; then
export OF_STATUS_H=0
export OF_SCREEN_H=2000
export OF_STATUS_INDENT_LEFT=60
export OF_STATUS_INDENT_RIGHT=60
export OF_CLOCK_POS=1
else