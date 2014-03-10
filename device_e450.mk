$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/e450/e450-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e450/overlay

LOCAL_PATH := device/lge/e450
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
  # $(LOCAL_PATH)/init.e0.rc:root/init.rc \
  # $(LOCAL_PATH)/ueventd.e0.rc:root/ueventd.rc \
  # $(LOCAL_PATH)/init.e0.usb.rc:root/init.usb.rc
  


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
PRODUCT_NAME := full_e450
PRODUCT_DEVICE := e450
PRODUCT_MODEL := LG-E450
