# Copyright (C) 2017-2020 The Dirty Unicorns Project
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

# Include DU common configuration
include vendor/scorpion/config/common_full_phone.mk

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit AOSP device configuration for taimen
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Override AOSP build properties
PRODUCT_NAME := scorpion_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="taimen" \
    PRIVATE_BUILD_DESC="taimen-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440
