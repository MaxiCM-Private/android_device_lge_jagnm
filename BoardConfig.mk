#
# Copyright (C) 2015 The MaxiCM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

USE_CAMERA_STUB := false
TARGET_NO_BOOTLOADER := true

TARGET_SPECIFIC_HEADER_PATH += device/lge/jagnm/include

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_BOOTLOADER_BOARD_NAME := jagnm-qcom
TARGET_NO_BOOTLOADER := true

# Kernel image
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_CUSTOM_BOOTIMG_MK := device/lge/jagnm/mkbootimg.mk
#TARGET_KERNEL_SOURCE := kernel/lge/jagnm
#TARGET_KERNEL_CONFIG := cyanogenmod_jagnm_defconfig
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=jagnm androidboot.selinux=enforcing
TARGET_PREBUILT_KERNEL := device/lge/jagnm/prebuilt/kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Offmode Charging
COMMON_GLOBAL_CFLAGS += \
    -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' \
    -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# Global flags
COMMON_GLOBAL_CFLAGS +=  -DLG_CAMERA_HARDWARE

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
BOARD_USES_ALSA_AUDIO := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Display
BOARD_EGL_CFG := device/lge/jagnm/configs/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Hardware tunables framework
BOARD_HARDWARE_CLASS := device/lge/jagnm/cmhw/

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/jagnm/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/jagnm/rootdir/fstab.jagnm
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Storage
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 40
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00E00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00E00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 754974720
BOARD_FLASH_BLOCK_SIZE := 131072

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Nfc
BOARD_NFC_CHIPSET := pn547

# Power
TARGET_POWERHAL_VARIANT := qcom
