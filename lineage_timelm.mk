#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from timelm device
$(call inherit-product, device/lge/timelm/device.mk)

# Set those variables here to overwrite the inherited values.

PRODUCT_DEVICE := timelm
PRODUCT_NAME := lineage_timelm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-V600
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V60 ThinQ
PRODUCT_SYSTEM_NAME := LGV60
PRODUCT_SYSTEM_DEVICE := LGV60

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="timelm-user 12/SKQ1.211103.001/222851743aa2c release-keys"

PRODUCT_DEFAULT_PROPERTY_OVERRIDE += \
ro.adb.secure=0

BUILD_FINGERPRINT := "lge/timelm/timelm:12/SKQ1.211103.001/222851743aa2c:user/release-keys"
