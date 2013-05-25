#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

include device/alcatel/bcm21553-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_PLATFORM := bcm21553
TARGET_BOOTLOADER_BOARD_NAME := v860
TARGET_OTA_ASSERT_DEVICE := v860,VodafoneSmart2

# Recovery
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 137363456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 180355072
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_RECOVERY_INITRC := device/alcatel/v860/recovery.rc
BOARD_LDPI_RECOVERY := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/alcatel/v860/recovery/recovery_ui.c

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/alcatel/bcm21553-common/prebuilt/kernel

## Enable if you build a kernel, then disable the prebuilt kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_cooperve_defconfig
