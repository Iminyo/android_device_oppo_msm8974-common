# inherit from the proprietary version
-include vendor/oppo/n1/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := n1
TARGET_OTA_ASSERT_DEVICE := n1,N1

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.selinux=permissive androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 
BOARD_KERNEL_BASE :=  0x80200000
#BOARD_FORCE_RAMDISK_ADDRESS := 0x05000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5100273664
BOARD_FLASH_BLOCK_SIZE := 131072

# global
TARGET_SPECIFIC_HEADER_PATH := device/oppo/n1/include
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

# Display
TARGET_QCOM_DISPLAY_VARIANT := caf
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 3200000
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true

# Audio/media
BOARD_USES_ALSA_AUDIO:= true
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_LOW_LATENCY_AUDIO := true
TARGET_QCOM_MEDIA_VARIANT := caf
BOARD_USES_FLUENCE_INCALL := true
# maxwen: this is actually only needed because
# of a bug in audio-caf when BOARD_USES_FLUENCE_INCALL := true
# to enter the default else path
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_HAVE_NEW_QCOM_CSDCLIENT := true
BOARD_USES_SEPERATED_HEADSET_MIC := true

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# Camera
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK -DQCOM_BSP_CAMERA_ABI_HACK -DNEEDS_VECTORIMPL_SYMBOLS
USE_DEVICE_SPECIFIC_CAMERA := true

# Disable secure discard because it's SLOW
BOARD_SUPPRESS_SECURE_ERASE := true

# wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oppo/n1/bluetooth

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"

BOARD_EGL_CFG := device/oppo/n1/configs/egl.cfg

# Compatibility with pre-kitkat Qualcomm sensor HALs
SENSORS_NEED_SETRATE_ON_ENABLE := true

#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Recovery:Start

TARGET_RECOVERY_FSTAB := device/oppo/n1/configs/fstab.n1

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP specific build flags
DEVICE_RESOLUTION := 1080x1920
#RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.590337/leds/lcd-backlight/brightness
#TW_MAX_BRIGHTNESS := 255
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/oppo/n1/recovery/graphics.c
TW_NO_SCREEN_TIMEOUT := true

