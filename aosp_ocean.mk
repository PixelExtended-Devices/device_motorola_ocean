#
# Copyright (C) 2019 The LineageOS Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common PE stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PEX:
PEX_BUILD_TYPE := OFFICIAL
PEX_MAINTAINER := VitorSSSouza
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit from ocean device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_VENDOR_PROPERTY_BLACKLIST := \
    ro.telephony.default_network \
    ro.vendor.telephony.default_network

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := ocean
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := aosp_ocean
PRODUCT_MODEL := moto g(7) power

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=ocean
