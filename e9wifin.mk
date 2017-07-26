LOCAL_PATH := device/lge/e9wifin

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/fstab.e9wifin:root/fstab.e9wifin

$(call inherit-product, build/target/product/full.mk)

PRODUCT_DEVICE := e9wifin
PRODUCT_NAME := e9wifin
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-V700N
PRODUCT_MANUFACTURER := LGE
