#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from muyu device
$(call inherit-product, device/xiaomi/muyu/device.mk)

PRODUCT_DEVICE := muyu
PRODUCT_NAME := omni_muyu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24091RPADG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="muyu_global-user 14 UKQ1.240624.001 OS3.0.4.0.WOYMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/muyu_global/muyu:14/UKQ1.240624.001/OS3.0.4.0.WOYMIXM:user/release-keys
