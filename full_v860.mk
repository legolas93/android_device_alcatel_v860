# Copyright (C) 2010 The Android Open Source Project
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

# Inherit products
$(call inherit-product, device/alcatel/bcm21553-common/common.mk)
$(call inherit-product, vendor/alcatel/v860/vendor_blobs.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS += device/alcatel/v860/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/mdpi

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Add LDPI assets, in addition to MDPI
	PRODUCT_LOCALES += ldpi mdpi

# Torch
PRODUCT_PACKAGES += \
	Torch \

# Board-specific init
PRODUCT_COPY_FILES += \
    	device/alcatel/v860/ramdisk/ueventd.rc:root/ueventd.rc \
    	device/alcatel/v860/ramdisk/init.bcm21553.rc:root/init.bcm21553.rc \
    	
PRODUCT_COPY_FILES += \
    	device/alcatel/v860/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    	device/alcatel/v860/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    	device/alcatel/v860/prebuilt/etc/wifi/nvram.txt:system/etc/wifi/nvram.txt \
    	device/alcatel/v860/prebuilt/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    	device/alcatel/v860/prebuilt/lib/libnetutils.so:system/lib/libnetutils.so \
    
# Discard inherited values and use our own instead.
PRODUCT_NAME := full_v860
PRODUCT_DEVICE := v860
PRODUCT_MODEL := VodafoneSmart2
