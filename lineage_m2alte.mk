#
# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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
#MODIFIED BY IAMHUMBLEMAN



# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, device/samsung/m2alte/full_m2alte.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m2alte/device_m2alte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := m2alte
PRODUCT_DEVICE := m2alte
PRODUCT_NAME := lineage_m2alte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := m2alte
PRODUCT_MANUFACTURER := samsung
BOARD_VENDOR := samsung

TARGET_VENDOR := samsung

TARGET_VENDOR_PRODUCT_NAME := m2alte
TARGET_VENDOR_DEVICE_NAME := m2alte
# PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=m2a3g PRODUCT_NAME=m2a3g
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-C111 \
    PRODUCT_NAME=m2alte \
    PRODUCT_DEVICE=m2alte \
    TARGET_DEVICE=m2alte \
    BUILD_FINGERPRINT="samsung/m2altexx/m2alte:4.4.2/KOT49H/C115XXU1BNF1:user/release-keys" \
    PRIVATE_BUILD_DESC="m2altexx-user 4.4.2 KOT49H C115XXU1BNF1 release-keys"
