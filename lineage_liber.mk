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

# Inherit from liber device
$(call inherit-product, device/motorola/liber/device.mk)

# Inherit some common Ricedroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_liber
PRODUCT_DEVICE := liber
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one fusion+
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "motorola/liber_retail/liber:11/RPIS31.Q2-42-25-1/19a8e:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="liber_retail-user 11 RPIS31.Q2-42-25-1 19a8e release-keys" \
    TARGET_PRODUCT="liber_retail"

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Gapps
WITH_GMS := true
ifeq ($(WITH_GMS),true)
$(call inherit-product, vendor/gapps/common/common-vendor.mk)
endif

# riceDroid Flags

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Enable Google Recorder Functionality
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

# Flag for GrapheneOS Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# Enable Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Enable Quick Tap Funtionality
TARGET_SUPPORTS_QUICK_TAP := true

# Enable Blur
TARGET_ENABLE_BLUR := true

# Set the correct chipset target to be shown in info
RICE_CHIPSET := SD730

# Maintainer Stuff
RICE_MAINTAINER := Lord Itachi
RICE_OFFICIAL := true

