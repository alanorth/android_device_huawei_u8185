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

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/u8185.mk)

# Inherit some common CM stuff.
$(call inherit-product, $(LOCAL_PATH)/overlay/vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration
PRODUCT_NAME := cm_u8185
PRODUCT_RELEASE_NAME := u8185
PRODUCT_DEVICE := u8185
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := U8185
PRODUCT_MANUFACTURER := Huawei

# Release name and versioning
PRODUCT_VERSION_DEVICE_SPECIFIC :=

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-240x320
