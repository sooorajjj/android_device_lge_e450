## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := e450

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e450/device_e450.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e450
PRODUCT_NAME := cm_e450
PRODUCT_BRAND := lge
PRODUCT_MODEL := e450
PRODUCT_MANUFACTURER := lge
