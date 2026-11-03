#
# Automatically generated file. DO NOT MODIFY
#

PRODUCT_SOONG_NAMESPACES += \
    vendor/miuicamera-courbet/xiaomi

PRODUCT_PACKAGES += \
    libcamera_algoup_jni.xiaomi \
    libcamera_mianode_jni.xiaomi \
    libmicampostproc_client \
    vendor.xiaomi.hardware.campostproc@1.0

ifeq ($(strip $(TARGET_USES_MIUICAMERA)),true)
    $(warning Building with Stock MiuiCamera)
    PRODUCT_PACKAGES += MiuiCamera
endif

ifeq ($(strip $(TARGET_USES_LEICA_)),true)
    $(warning Building with Leica Camera Holy 4.5)
    PRODUCT_PACKAGES += MiuiCamera_Leica_Holy_4_5
endif

# Fallback
ifneq ($(or \
    $(TARGET_USES_MIUICAMERA), \
    $(TARGET_USES_LEICA)),true)
    $(warning No TARGET_USES_* camera flag set — defaulting to Miui Camera)
    PRODUCT_PACKAGES += MiuiCamera
endif
