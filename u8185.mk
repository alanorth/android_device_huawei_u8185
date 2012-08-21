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

PRODUCT_COPY_FILES += device/huawei/u8185/prebuilt/kernel:kernel

$(call inherit-product-if-exists, vendor/huawei/u8185/u8185_base.mk)

$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_DEVICE := u8185
PRODUCT_MODEL := U8185
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
