# Copyright (C) 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Target Info
TARGET_SOC := exynos7884B
TARGET_DEVICE := a10

# Inherit common device configuration
$(call inherit-product, device/samsung/exynos7885-common/exynos7885-common.mk)

# Inherit proprietary files setup
$(call inherit-product, vendor/samsung/a10/a10-vendor.mk)

# Inherit dalvik config
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display resolution
TARGET_SCREEN_HEIGHT := 1560
TARGET_SCREEN_WIDTH := 720

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Set app compilation mode to speed-profile for system apps
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := speed-profile
WITH_DEXPREOPT := true
PRODUCT_DEX_PREOPT_GENERATE_DM_FILES := true

# Set app compilation mode to speed-profile for user apps
PRODUCT_PROPERTY_OVERRIDES += \
    pm.dexopt.first-boot=speed-profile \
    pm.dexopt.boot=verify \
    pm.dexopt.install=speed-profile \
    pm.dexopt.bg-dexopt=speed-profile \
    pm.dexopt.ab-ota=speed-profile
