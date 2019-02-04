#
# Copyright (C) 2017 The Android Open Source Project
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

# Specify phone tech before including full_phone
# $(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sanders
PRODUCT_NAME := omni_sanders
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G (5S) Plus
PRODUCT_MANUFACTURER := motorola


# PRODUCT_BUILD_PROP_OVERRIDES += \
#	PRODUCT_NAME=sanders_retail \
#	BUILD_THUMBPRINT=7.1.1/NPSS26.116-61-5/12:user/release-keys \
#	BUILD_FINGERPRINT=motorola/sanders/sanders:7.1.1/NPSS26.116-61-5/12:user/release-keys \
#	PRIVATE_BUILD_DESC="sanders-user 7.1.1 NPSS26.116-61-5 12 release-keys"
