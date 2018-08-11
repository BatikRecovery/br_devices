
# Screen Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

# Encryption
PRODUCT_PACKAGES += \
	libcryptfs_hw

# Kernel
PRODUCT_COPY_FILES += \
	device/xiaomi/land/prebuilt/zImage:kernel
