# TWRP
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 75
TW_FLASH_FROM_STORAGE := true
TW_NO_SCREEN_BLANK := true
TW_DEFAULT_EXTERNAL_STORAGE := true

# Get rid of annoying virtual mouse
TW_INPUT_BLACKLIST := "hbtp_vm"

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Encryption support
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Remove SuperSU
TW_EXCLUDE_SUPERSU := true
