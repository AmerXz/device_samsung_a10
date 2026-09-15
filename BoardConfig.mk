DEVICE_PATH := device/samsung/a10

# Asserts
TARGET_OTA_ASSERT_DEVICE := a10,a10dd

# Kernel
TARGET_KERNEL_CONFIG := a10_defconfig

# Display
TARGET_SCREEN_DENSITY := 280

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528 # 55MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3556769792 #4.02GB
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_VENDORIMAGE_PARTITION_SIZE := 394264576

# Inherit common board flags
include device/samsung/exynos7885-common/BoardConfigCommon.mk

# Sensors
SOONG_CONFIG_NAMESPACES += exynos7885Vars
SOONG_CONFIG_exynos7885Vars += sensors_use_32bit
SOONG_CONFIG_exynos7885Vars_sensors_use_32bit := true

# SPL
VENDOR_SECURITY_PATCH := 2021-12-01

# VSync Buffer Fix to absorb "Frame time in the future" lag
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 9000000
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0

# Force Triple Buffering to compensate for legacy Samsung Gralloc drivers
BOARD_USES_TRIPLE_BUFFERING := true
TARGET_DISABLE_TRIPLE_BUFFERING := false

# Force SurfaceFlinger alignment without strict sync framework choking
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC4 := false

