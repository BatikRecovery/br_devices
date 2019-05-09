# Release name
PRODUCT_RELEASE_NAME := kenzo

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := omni_kenzo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=sdm660
