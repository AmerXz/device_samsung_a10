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

# Disable memory-heavy pinning for 2GB RAM to stop 10-second freezes
PRODUCT_PRODUCT_PROPERTIES += \
    runtime.native.pin_camera=false \
    sys.config.pinner_cmgr=false \
    sys.config.pinner_webview=false
