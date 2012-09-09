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
    copybit.msm7x27a

# lights
PRODUCT_PACKAGES += \
    lights.msm7x27a

# audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/u8185_keypad.kl:system/usr/keylayout/u8185_keypad.kl

# misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/media_profiles.xml:system/etc/media_profiles.xml

$(call inherit-product-if-exists, vendor/huawei/u8185/u8185_base.mk)

$(call inherit-product, build/target/product/full_base.mk)

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
