#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#minigapps
#$(call inherit-product, vendor/gms/common/common-vendor1.mk)

#miuicam
$(call inherit-product, vendor/xiaomi/lmi-miuicamera/config.mk)

#BCR
$(call inherit-product, vendor/xiaomi/bcr/bcr.mk)


# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080
EVO_BUILD_TYPE := COMMUNITY
PRODUCT_NAME := lineage_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro

# Extra Flags
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_SCREEN_HEIGHT    := 2340
TARGET_SCREEN_WIDTH     := 1080
WITH_GMS := false
BUILD_BCR:=true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
#TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/lmi/lmi:12/RKQ1.211001.001/V13.0.3.0.SJKMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
  BuildDesc="lmi-user 12 RKQ1.211001.001 V13.0.6.0.SJKCNXM release-keys" 

