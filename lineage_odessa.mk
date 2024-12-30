#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from odessa device
$(call inherit-product, device/motorola/odessa/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Flags
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_DISABLE_EPPE := true
TARGET_BOOT_ANIMATION_RES := 1080

# RisingFlags
RISING_MAINTAINER="Thiago"
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true 

# Signing Build
-include vendor/lineage-priv/keys/keys.mk

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_odessa
PRODUCT_DEVICE := odessa
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9) plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="odessa_retail-user 11 RPAS31.Q2-59-17-4-5-5 af8e3 release-keys" \
    BuildFingerprint=motorola/odessa_retail/odessa:11/RPAS31.Q2-59-17-4-5-5/af8e3:user/release-keys \
    RisingChipset="Snapdragon 730G" \
    RisingMaintainer="Thiago"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
