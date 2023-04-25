#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter timelm,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)
# A/B builds require us to create the mount points at compile time.
# Just creating it for all cases since it does not hurt.

FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/firmware_mnt
$(FIRMWARE_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(FIRMWARE_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/firmware_mnt

BT_FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/bt_firmware
$(BT_FIRMWARE_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(BT_FIRMWARE_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/bt_firmware

DSP_MOUNT_POINT := $(TARGET_OUT_VENDOR)/dsp
$(DSP_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(DSP_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/dsp


ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MOUNT_POINT) $(BT_FIRMWARE_MOUNT_POINT) $(DSP_MOUNT_POINT) 	$(ODM_MOUNT_POINT)

PRODUCT_SYMLINKS := $(addprefix $(TARGET_ROOT_OUT)/, $(notdir $(PRODUCT_IMAGES)))
$(PRODUCT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating Product folder structure: $@"
	$(hide) ln -sf /mnt/product/$(notdir $@) $@
ALL_DEFAULT_INSTALLED_MODULES += $(PRODUCT_SYMLINKS)

HDCPSRM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(HDCPSRM_IMAGES)))
$(HDCPSRM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
		@echo "HDCPSRM firmware link: $@"
		@mkdir -p $(dir $@)
		@rm -rf $@
		$(hide) ln -sf /vendor/firmware/$(notdir $@) $@


# DXHDCP2 Images
DXHDCP2_IMAGES := \
    dxhdcp2.b00 dxhdcp2.b01 dxhdcp2.b02 dxhdcp2.b03 dxhdcp2.b04 \
    dxhdcp2.b05 dxhdcp2.b06 dxhdcp2.b07  dxhdcp2.mdt

DXHDCP2_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(DXHDCP2_IMAGES)))
$(DXHDCP2_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DXHDCP2 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/firmware_mnt/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DXHDCP2_SYMLINKS)

 HDCPSRM_IMAGES := \
	    hdcpsrm.b00 hdcpsrm.b01 hdcpsrm.b02 hdcpsrm.b03 hdcpsrm.b04 \
	    hdcpsrm.b05 hdcpsrm.b06 hdcpsrm.b07 hdcpsrm.mdt

HDCPSRM_EXT_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(HDCPSRM_IMAGES)))
$(HDCPSRM_EXT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
		@echo "HDCPSRM firmware link: $@"
		@mkdir -p $(dir $@)
		@rm -rf $@
		$(hide) ln -sf /vendor/firmware_mnt/image/$(notdir $@) $@

#ALL_DEFAULT_INSTALLED_MODULES += $(HDCPSRM_EXT_SYMLINKS)

HDCPSRM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(HDCPSRM_IMAGES)))
$(HDCPSRM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
		@echo "HDCPSRM firmware link: $@"
		@mkdir -p $(dir $@)
		@rm -rf $@
		$(hide) ln -sf /mnt/vendor/persist-lg/firmware/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(HDCPSRM_SYMLINKS)

IPA_IMAGES := \
 ipa_fws.b00 ipa_fws.b01 ipa_fws.b02 ipa_fws.b03 ipa_fws.b04 ipa_fws.elf \
 ipa_fws.mdt ipa_uc.b00 ipa_uc.b01 ipa_uc.b02 ipa_uc.elf ipa_uc.mdt


IPA_SYMLINKS := $(addprefix  $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(IPA_IMAGES)))
$(IPA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	 @echo "IPA firmware link: $@"
	 @mkdir -p $(dir $@)
	 @rm -rf $@
	 $(hide) ln -sf /vendor/firmware_mnt/image/$(notdir $@) $@

#ALL_DEFAULT_INSTALLED_MODULES += $(IPA_SYMLINKS)

CPPF_IMAGES := \
 cppf.b00 cppf.b01 cppf.b02 cppf.b03 cppf.b04 cppf.b05 cppf.b06 \
 cppf.b07 cppf.mdt


CPPF_SYMLINKS := $(addprefix  $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(CPPF_IMAGES)))
$(CPPF_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	 @echo "CPPF firmware link: $@"
	 @mkdir -p $(dir $@)
	 @rm -rf $@
	 $(hide) ln -sf /mnt/vendor/persist-lg/firmware/$(notdir $@) $@

#ALL_DEFAULT_INSTALLED_MODULES += $(CPPF_SYMLINKS)

# WIDEVINE Images
WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.b04 \
    widevine.b05 widevine.b06 widevine.b07 widevine.mdt

WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(WIDEVINE_IMAGES)))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WIDEVINE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /mnt/vendor/persist-lg/firmware/$(notdir $@) $@

#ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)

EGL_LIBS := libEGL_adreno.so libGLESv2_adreno.so libq3dtools_adreno.so
EGL_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib/,$(notdir $(EGL_LIBS)))
$(EGL_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "EGL 32 bit libs link: $@"
	$(hide) ln -sf /system/vendor/lib/egl/$(notdir $@) $@

EGL64_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib64/,$(notdir $(EGL_LIBS)))
$(EGL64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "EGL 64 bit libs link: $@"
	$(hide) ln -sf /system/vendor/lib64/egl/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(EGL_SYMLINKS) $(EGL64_SYMLINKS)

PN557_LIB := libpn557_fw.so
PN557_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib/,$(notdir $(PN557_LIB)))
$(PN557_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "PN557 32 bit libs link: $@"
	$(hide) ln -sf /vendor/firmware/$(notdir $@) $@

PN55764_LIB := libpn557_fw_64.so
PN55764_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib64/,$(notdir $(PN55764_LIB)))
$(PN55764_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "PN557 64 bit libs link: $@"
	$(hide) ln -sf /vendor/firmware/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PN557_SYMLINKS) $(PN55764_SYMLINKS)

IMS_LIBS := libimscamera_jni.so libimsmedia_jni.so
IMS_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_APPS)/ims/lib/arm64/,$(notdir $(IMS_LIBS)))
$(IMS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "IMS lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/vendor/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(IMS_SYMLINKS)

MLSERVER_LIBS := libMlUtils.lge.so libMlAudio.lge.so
MLSERVER_SYMLINKS := $(addprefix $(TARGET_OUT_PRODUCT_APPS)/MirrorLinkServer/lib/arm/,$(notdir $(MLSERVER_LIBS)))
$(MLSERVER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MirrorLinkServer lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/product/lib/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MLSERVER_SYMLINKS)

MLUPNPSERVER_LIB := libmlupnp.lge.so
MLUPNPSERVER_SYMLINK := $(addprefix $(TARGET_OUT_PRODUCT_APPS)/MLUpnpServerDevice/lib/arm/,$(notdir $(MLUPNPSERVER_LIB)))
$(MLUPNPSERVER_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "MLUpnpServerDevice lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/product/lib/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MLUPNPSERVER_SYMLINK)

CNEAPP_LIB := libvndfwk_detect_jni.qti.so
CNEAPP_SYMLINK := $(addprefix $(TARGET_OUT_VENDOR_APPS)/CneApp/lib/arm64,$(notdir $(CNEAPP_LIB)))
$(CNEAPP_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "CNEapp lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/vendor/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CNEAPP_SYMLINK)

C++SHARED_SNPE32_LIB := libc++_shared.so
C++SHARED_SNPE32_SYMLINK := $(addprefix $(TARGET_OUT_VENDOR)/lib/,$(notdir $(C++SHARED_SNPE32_LIB)))
$(C++SHARED_SNPE32_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "libc++_shared 32bit lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/vendor/lib/libc++_shared_snpe.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(C++SHARED_SNPE32_SYMLINK)

C++SHARED_SNPE64_LIB := libc++_shared.so
C++SHARED_SNPE64_SYMLINK := $(addprefix $(TARGET_OUT_VENDOR)/lib64/,$(notdir $(C++SHARED_SNPE64_LIB)))
$(C++SHARED_SNPE64_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "libc++_shared 64bit lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/vendor/lib64/libc++_shared_snpe.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(C++SHARED_SNPE64_SYMLINK)


RFS_MSM_ADSP_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/adsp/
$(RFS_MSM_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM ADSP folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/lpass $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/msm/adsp $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MSM_CDSP_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/cdsp/
$(RFS_MSM_CDSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM CDSP folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/cdsp $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/msm/cdsp $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MSM_MPSS_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/mpss/
$(RFS_MSM_MPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM MPSS folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/modem $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/msm/mpss $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MSM_SLPI_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/slpi/
$(RFS_MSM_SLPI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM SLPI folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/slpi $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/msm/slpi $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MSM_WPSS_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/wpss/
$(RFS_MSM_WPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
		@echo "Creating RFS MSM WPSS folder structure: $@"
		@rm -rf $@/*
		@mkdir -p $(dir $@)/readonly/vendor
		$(hide) ln -sf /data/vendor/tombstones/rfs/slpi $@/ramdumps
		$(hide) ln -sf /mnt/vendor/persist/rfs/msm/slpi $@/readwrite
		$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
		$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
		$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
		$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MDM_ADSP_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/
$(RFS_MDM_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MDM ADSP folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/lpass $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/mdm/adsp $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MDM_CDSP_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/mdm/cdsp/
$(RFS_MDM_CDSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MDM CDSP folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/cdsp $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/mdm/cdsp $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MDM_MPSS_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/
$(RFS_MDM_MPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MDM MPSS folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/modem $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/mdm/mpss $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MDM_SLPI_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/mdm/slpi/
$(RFS_MDM_SLPI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MDM SLPI folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/slpi $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/mdm/slpi $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MDM_TN_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/mdm/tn/
$(RFS_MDM_TN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MDM TN folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/tn $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/mdm/tn $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MDM_WPSS_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/mdm/wpss/
$(RFS_MDM_WPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
			@echo "Creating RFS MDM WPSS folder structure: $@"
			@rm -rf $@/*
			@mkdir -p $(dir $@)/readonly/vendor
			$(hide) ln -sf /data/vendor/tombstones/rfs/slpi $@/ramdumps
			$(hide) ln -sf /mnt/vendor/persist/rfs/msm/slpi $@/readwrite
			$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
			$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
			$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
			$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_APQ_GNSS_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/apq/gnss/
$(RFS_APQ_GNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS APQ GNSS folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/modem $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/rfs/apq/gnss $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

WIFI_FIRMWARE_SYMLINKS := $(TARGET_OUT_VENDOR)/firmware/wlan/qca_cld
$(WIFI_FIRMWARE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating wifi firmware symlinks: $@"
	@mkdir -p $@
	$(hide) ln -sf /mnt/vendor/persist-lg/wifi/WCNSS_qcom_cfg.ini $@/WCNSS_qcom_cfg.ini
	$(hide) ln -sf /mnt/vendor/persist-lg/wifi/wlan_mac.bin $@/wlan_mac.bin

ALL_DEFAULT_INSTALLED_MODULES +=  $(ACDBDATA_SYMLINKS) $(RFS_MDM_ADSP_SYMLINKS) $(RFS_MDM_CDSP_SYMLINKS) $(RFS_MDM_MPSS_SYMLINKS) $(RFS_MDM_SLPI_SYMLINKS) $(RFS_MDM_TN_SYMLINKS) $(RFS_MSM_ADSP_SYMLINKS) $(RFS_MSM_CDSP_SYMLINKS) $(RFS_MSM_MPSS_SYMLINKS) $(RFS_MSM_SLPI_SYMLINKS)  $(RFS_APQ_GNSS_SYMLINKS) $(RFS_MSM_WPSS_SYMLINKS) $(RFS_MDM_WPSS_SYMLINKS) $(WIFI_FIRMWARE_SYMLINKS)
endif
