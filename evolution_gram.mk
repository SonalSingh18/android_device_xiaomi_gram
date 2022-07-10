#
# Copyright (C) 2020 The ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from gram device
$(call inherit-product, device/xiaomi/gram/device.mk)

# Inherit some common Evolution-X stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_SUPPORTS_QUICK_TAP := true
EVO_BUILD_TYPE := CUSTOM

# Inherit lawnchair conditionally
ifeq ($(LAWNCHAIR), true)
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)
endif

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := evolution_gram
PRODUCT_DEVICE := gram
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Poco M2 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gram_in-user 11 RKQ1.200826.002 V12.5.6.0.RJPINXM release-keys"

BUILD_FINGERPRINT := POCO/gram_in/gram:11/RKQ1.200826.002/V12.5.6.0.RJPINXM:user/release-keys
