# Copyright (C) 2012 The Android Open Source Project
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

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.u8185.rc:root/init.u8185.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.u8185.rc:root/ueventd.u8185.rc

# graphics
PRODUCT_PACKAGES += \
    libgenlock \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    hwcomposer.msm7x27a

# lights
PRODUCT_PACKAGES += \
    lights.msm7x27a

# audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# gps
PRODUCT_PACKAGES += \
    gps.u8185

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/u8185_keypad.kl:system/usr/keylayout/u8185_keypad.kl

# hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/media_profiles.xml:system/etc/media_profiles.xml

# wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Huawei RIL implementation
# From Dazozzo's decompiled stock GB RIL
FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product-if-exists, vendor/huawei/u8185/u8185_base.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# LDPI assets
PRODUCT_AAPT_CONFIG := small ldpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_DEVICE := u8185
PRODUCT_MODEL := U8185
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
