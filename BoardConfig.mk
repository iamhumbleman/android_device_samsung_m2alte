# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# inherit from common msm8974
# TODO: Don't Need This
#include device/samsung/msm8974-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/m2alte

BUILD_BROKEN_DUP_RULES := true

# Include path
#TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Firmware
 TARGET_NO_BOOTLOADER := true
 TARGET_NO_RADIOIMAGE := true

# Platform
 TARGET_BOARD_PLATFORM := exynos5
 #TARGET_SLSI_VARIANT := bsp
 #TARGET_BOARD_PLATFORM_GPU := Mali-T624
 #TARGET_SOC := exynos5260
 #TARGET_BOOTLOADER_BOARD_NAME := universal5260
 #BOARD_VENDOR := samsung

# Architecture target 1st arch CPU IMH
 TARGET_ARCH := arm
 TARGET_ARCH_VARIANT := armv7-a-neon
 TARGET_CPU_ABI := armeabi-v7a
 TARGET_CPU_ABI2 := armeabi
 TARGET_CPU_VARIANT := cortex-a7
 #TARGET_CPU_SMP := true
 #ARCH_ARM_HAVE_TLS_REGISTER := true

# Architecture target 2nd arch CPU IMH
 #TARGET_2ND_ARCH := arm
 #TARGET_2ND_ARCH_VARIANT := armv7-a-neon
 #TARGET_2ND_CPU_ABI := armeabi-v7a
 #TARGET_2ND_CPU_ABI2 := armeabi
 #TARGET_2ND_CPU_VARIANT := cortex-a15
 #TARGET_2ND_ARCH_VARIANT_CPU := cortex-a15
 #TARGET_2ND_CPU_SMP := true
 #ARCH_ARM_HAVE_TLS_REGISTER := true
# ===

# Kernel
 BOARD_KERNEL_BASE := 0x10000000
 BOARD_KERNEL_PAGESIZE := 2048
 BOARD_KERNEL_IMAGE_NAME := zImage
 TARGET_PREBUILT_KERNEL := device/samsung/m2alte/kernel



# Partitions / Filesystems by IMH
 BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
 BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
 BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2055208960
 BOARD_USERDATAIMAGE_PARTITION_SIZE := 5398069248
 BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
 BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

 # blockdev --getbsz /dev/block/mmcblk0p9
 BOARD_FLASH_BLOCK_SIZE := 2048    # ( BOARD_KERNEL_PAGESIZE * 64 BY AKLU ) IHM flash block size : 2048 12582912 

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth m2a3g / klte
 #BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/configs/bluetooth
 BOARD_HAVE_BLUETOOTH_BCM := true
 BOARD_HAVE_SAMSUNG_BLUETOOTH := true
# ===

# Graphics
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true

# HWComposer
#BOARD_USES_VPP := true
#BOARD_HDMI_INCAPABLE := true

# Wifi
 BOARD_WLAN_DEVICE                := bcmdhd
 WPA_SUPPLICANT_VERSION           := VER_0_8_X
 BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
 BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
 WPA_SUPPLICANT_USE_HIDL          := true
 BOARD_HOSTAPD_DRIVER             := NL80211
 BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
 #WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
 WIFI_DRIVER_FW_PATH_AP           := "$(LOCAL_PATH)/configs/wifi/bcmdhd_apsta.bin_b2"
 WIFI_DRIVER_FW_PATH_MFG          := "$(LOCAL_PATH)/configs/wifi/bcmdhd_mfg.bin_b2"
 WIFI_DRIVER_FW_PATH_P2P          := "$(LOCAL_PATH)/configs/wifi/bcmdhd_p2p.bin_b2"
 WIFI_DRIVER_FW_PATH_STA          := "$(LOCAL_PATH)/configs/wifi/bcmdhd_sta.bin_b2"
 WIFI_BAND                        := 802_11_ABG
 #WIFI_DRIVER_MODULE_ARG           := "firmware_path="$(LOCAL_PATH)/configs/wifi/bcmdhd_apsta.bin_b2 nvram_path="$(LOCAL_PATH)/configs/wifi/nvram_net.txt"        #KLTE
 #WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path="$(LOCAL_PATH)/configs/wifi/bcmdhd_apsta.bin_b2 nvram_path=$(LOCAL_PATH)/configs/wifi/nvram_net.txt"      #KLTE    
 #WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path="$(LOCAL_PATH)/configs/wifi/bcmdhd_mfg.bin_b2 nvram_path=$(LOCAL_PATH)/configs/wifi/nvram_mfg.txt"      #KLTE    

 #WIFI_DRIVER_FW_PATH_P2P     := "/vendor/etc/wifi/bcmdhd_p2p.bin_b2"     #HLLTE
 #WIFI_DRIVER_FW_PATH_MFG     := "/vendor/etc/wifi/bcmdhd_mfg.bin_b2"     #IHM
 #WIFI_DRIVER_NVRAM_PATH_PARAM:= "/sys/module/dhd/parameters/nvram_path"  #LOS
 WIFI_DRIVER_NVRAM_PATH      := "$(LOCAL_PATH)/configs/wifi/nvram_net.txt"         #LOS
 WIFI_DRIVER_NVRAM_PATH      := "$(LOCAL_PATH)/configs/wifi/nvram_mfg.txt"         #LOS
 WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true                   #KLTE

# Wifi loader
BOARD_HAVE_SAMSUNG_WIFI := true

# Recovery
 TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/configs/rootdir/etc/fstab.universal5260
# ===

# SeLinux (Files hllte & using klte step)
 #include $(LOCAL_PATH)/sepolicy/sepolicy.mk
# ===

# Soong namespaces
#PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# NFC
 #include $(LOCAL_PATH)/nfc/pn547/board.mk
 #BOARD_HAVE_NFC := true
 #BOARD_NFC_HAL_SUFFIX := universal5260

# NFC hllte
 #BOARD_HAVE_NFC := true
 #BOARD_NFC_HAL_SUFFIX := universal5260
# ===

#DONE
# FINGERPRINT IHM
 #BUILD_FINGERPRINT := "samsung/m2a3gxx/m2a3g:4.4.2/KOT49H/C111XXU1ANF1:user/release-keys"
 #PRIVATE_BUILD_DESC := "m2a3gxx-user 4.4.2 KOT49H C111XXU1ANF1 release-keys"
# ===

# call the proprietary setup
#$(call inherit-product-if-exists, vendor/samsung/m2a3g/m2a3g-vendor.mk)

