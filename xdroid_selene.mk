#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common XdroidOSS-Pixel stuff
$(call inherit-product, vendor/xdroid/config/common.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from selene device makefile
$(call inherit-product, device/xiaomi/selene/device.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# Some specific flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_CHARGER := true

#Xdroid Stuff
XDROID_MAINTAINER := YudhoPatrianto
XDROID_BOOT := 1080
TARGET_ENABLE_BLUR := false

# GoogleApps Stuff
WITH_GMS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := selene
PRODUCT_NAME := cherish_selene
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 10
PRODUCT_SYSTEM_NAME := selene
PRODUCT_SYSTEM_DEVICE := selene

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := selene
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="selene-user 13 TP1A.220624.014 V14.0.3.0.TKUEUXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/selene/selene:13/TP1A.220624.014/V14.0.3.0.TKUEUXM:user/release-keys
