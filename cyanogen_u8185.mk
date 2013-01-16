# Inherit AOSP device configuration for U8185.
$(call inherit-product, device/huawei/u8185/device_u8185.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full_no_themes.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8185
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8185
PRODUCT_MODEL := U8185
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8185 BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

# Extra LDPI overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Release name and versioning
PRODUCT_RELEASE_NAME := U8185
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
     vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip
