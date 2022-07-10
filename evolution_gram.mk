#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from gram device
$(call inherit-product, device/xiaomi/gram/device.mk)

# Inherit some common Evolution-X stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
EVO_BUILD_TYPE := CUSTOM

TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := evolution_gram
PRODUCT_DEVICE := gram
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco M2 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gram_in-user 12 RKQ1.211019.001 V13.0.2.0.SJPINXM release-keys"

PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.fingerprint="POCO/gram_in/gram:12/RKQ1.211019.001/V13.0.2.0.SJPINXM:user/release-keys"
