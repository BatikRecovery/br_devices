LOCAL_PATH := device/asus/X00TD/

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno509

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0xc170000 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += sched_enable_hmp=1 sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 service_locator.enable=1 swiotlb=1
BOARD_KERNEL_CMDLINE += user_debug=31 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# TARGET_LDPRELOAD := libNimsWrap.so

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Recovery
RECOVERY_VARIANT := twrp

# TWRP-Specific
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 178
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd hwservicemanager keymaster-3-0
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true

# Correct time
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_DEVICE_MODULE := tzdata
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT)/usr/share/zoneinfo/tzdata

# Remove cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# Extra configurations
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_SUPERSU := true

# Fix access denied issue
BOARD_SEPOLICY_DIRS += device/asus/X00TD/sepolicy

# Fix error using mke2fs
TW_RECOVERY_ADDITIONAL_RELINK_FILES := \
    $(OUT)/system/lib64/libext2_misc.so

# For decrypting /data, we need to hack recovery.img and inject new os and
# security version
BOARD_CUSTOM_BOOTIMG_MK := device/asus/X00TD/boot.mk

# Official
BR_OFFICIAL := true
