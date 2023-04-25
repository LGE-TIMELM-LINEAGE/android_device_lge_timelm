LOCAL_PATH := $(call my-dir)
# TODO Transfer appropriately to Android.bp


include $(CLEAR_VARS)
LOCAL_MODULE           := init.mid.service.rc
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS    := ETC
LOCAL_SRC_FILES              := init.mid.service.rc
LOCAL_MODULE_PATH      := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE           := init.mid.rc
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS    := ETC
LOCAL_SRC_FILES              := init.mid.rc
LOCAL_MODULE_PATH      := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE           := fstab.timelm
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS     := ETC
LOCAL_SRC_FILES        := fstab.timelm
LOCAL_REQUIRED_MODULES := fstab.timelm.ramdisk
LOCAL_MODULE_PATH      := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE           := fstab.qcom
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS     := ETC
LOCAL_SRC_FILES        := fstab.qcom
LOCAL_REQUIRED_MODULES := fstab.qcom.ramdisk
LOCAL_MODULE_PATH      := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE           := fstab.qcom.ramdisk
LOCAL_MODULE_STEM      := fstab.qcom
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS     := ETC
LOCAL_SRC_FILES              := fstab.qcom
LOCAL_MODULE_PATH      := $(TARGET_RAMDISK_OUT)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE           := fstab.timelm.ramdisk
LOCAL_MODULE_STEM      := fstab.timelm
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS    := ETC
LOCAL_SRC_FILES              := fstab.timelm
LOCAL_MODULE_PATH      := $(TARGET_RAMDISK_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.timelm.rc
LOCAL_MODULE_STEM  := ueventd.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.vendor.rc
LOCAL_MODULE_STEM  := ueventd.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.sm8250.crash.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := vendor_init/init.sm8250.crash.sh
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)
