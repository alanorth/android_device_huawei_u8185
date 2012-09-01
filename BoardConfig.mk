# Copyright (C) 2011 The Android Open Source Project
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

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8185/include

# CPU (msm7225a)
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU := neon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := u8185
TARGET_OTA_ASSERT_DEVICE := u8185

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8185/recovery/recovery_keys.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8185/prebuilt/recovery_kernel
BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"'

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/u8815
TARGET_KERNEL_CONFIG := cyanogenmod_u8185_defconfig
TARGET_PREBUILT_KERNEL := device/huawei/u8185/prebuilt/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=u8185
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

## OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/u8185/config/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# /proc/mtd
#dev:    size   erasesize  name
#mtd0: 00500000 00020000 "boot"
#mtd1: 00500000 00020000 "recovery"
#mtd2: 00140000 00020000 "misc"
#mtd3: 00240000 00020000 "MTD-Crash"
#mtd4: 0ba00000 00020000 "system"
#mtd5: 03a00000 00020000 "cache"
#mtd6: 0a500000 00020000 "userdata"
#mtd7: 01400000 00020000 "userdata2"
#mtd8: 01400000 00020000 "cust"
#mtd9: 00140000 00020000 "MIBIB"
#mtd10: 00060000 00020000 "QCSBL"
#mtd11: 00800000 00020000 "OEMINFO"
#mtd12: 001a0000 00020000 "OEMSBL1"
#mtd13: 001a0000 00020000 "OEMSBL2"
#mtd14: 01e00000 00020000 "AMSS"
#mtd15: 00600000 00020000 "EFS2"
#mtd16: 00060000 00020000 "APPSBL"
#mtd17: 00040000 00020000 "FOTA"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
# recovery is actually 0x00500000, but CWM is big, and the build system
# refuses to build recovery if it's larger than this. The resulting img
# flashes and works fine, though.
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a500000

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144 
