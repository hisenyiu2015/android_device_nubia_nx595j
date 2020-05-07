#
# Copyright (C) 2020 The CarbonROM Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

# Inherit from nx595j device
$(call inherit-product, device/nubia/nx595j/msm8998.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit proprietary device parts
$(call inherit-product-if-exists, vendor/nubia/nx595j/nx595j-vendor.mk)

PRODUCT_NAME := carbon_nx595j
PRODUCT_DEVICE := nx595j
PRODUCT_MANUFACTURER := nubia
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX595J

PRODUCT_GMS_CLIENTID_BASE := android-zte

TARGET_VENDOR_PRODUCT_NAME := NX595J
TARGET_VENDOR_DEVICE_NAME := NX595J

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX595J PRODUCT_NAME=NX595J

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX595J-user 7.1.1 NMF26X eng.nubia.20190907.214550 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := nubia/NX595J/NX595J:7.1.1/NMF26X/eng.nubia.20171114.191214:user/release-keys

TARGET_VENDOR := nubia

