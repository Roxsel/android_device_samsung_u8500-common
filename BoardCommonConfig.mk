#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := false
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_LIBSECRIL_STUB := true

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true


BOARD_RIL_CLASS := ../../../device/samsung/u8500-common/ril/

# Flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp


# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/u8500-common/releasetools/u8500_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/u8500-common/releasetools/u8500_img_from_target_files


# Audio

BOARD_USES_ALSA_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DSTE_AUDIO
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB
MR0_AUDIO_BLOB := true
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true

# Graphics
BOARD_EGL_CFG := device/samsung/u8500-common/configs/egl.cfg
USE_OPENGL_RENDERER := true
# COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=57

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Camera
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_STE

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/u8500-common/bluetooth/vnd_u8500.txt

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun%d/file"

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/u8500-common/recovery/graphics.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_EMMC_WIPE := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/u8500-common/overlay/include

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/devices/virtual/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGER_RES := device/samsung/u8500-common/res/charger


BOARD_CUSTOM_BOOTIMG_MK := device/samsung/u8500-common/shbootimg.mk

BOARD_USES_PROPRIETARY_LIBCAMERA := true
BOARD_USES_PROPRIETARY_LIBFIMC := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

