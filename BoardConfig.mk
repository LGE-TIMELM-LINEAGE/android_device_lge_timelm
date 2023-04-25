#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include vendor/lge/timelm/BoardConfigVendor.mk

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

TARGET_SCREEN_DENSITY := 395

DEVICE_PATH := device/lge/timelm

BOARD_VENDOR := lge

AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    recovery \
    system \
    vbmeta \
    vbmeta_system \
    vendor

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9
TARGET_CPU_VARIANT_RUNTIME := kryo385
TARGET_USES_64_BIT_BINDER := true

# Audio
AUDIO_FEATURE_ENABLED_DLKM := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := false
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_HAVE_BLUETOOTH_QCOM := true
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kona

# Camera
 TARGET_USES_QTI_CAMERA_DEVICE := true
 USE_DEVICE_SPECIFIC_CAMERA := true

# CNE and DPM
BOARD_USES_QCNE := true

# Display
BOARD_USES_ADRENO := true
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_QTI_MAPPER_2_0 := true
TARGET_USES_QTI_MAPPER_EXTENSIONS_1_1 := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Fingerprint
TARGET_SURFACEFLINGER_UDFPS_LIB := //hardware/lge:libudfps_extension.lge

# FM Radio
BOARD_HAS_QCA_FM_SOC := hastings
BOARD_HAVE_QCOM_FM := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
$(DEVICE_PATH)/vintf/device_framework_matrix.xml \
vendor/lineage/config/device_framework_matrix.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/vintf/device_manifest.xml
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/vintf/framework_manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/vintf/device_compatibility_matrix.xml

# Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_CMDLINE :=	androidboot.selinux=permissive \
			rcupdate.rcu_expedited=1 \
			rcu_nocbs=0-7 \
			kpti=off \
			androidboot.memcg=1 \
			lpm_levels.sleep_disabled=1 \
			video=vfb:640x400,bpp=32,memsize=3072000 \
			msm_rtb.filter=0x237 \
			service_locator.enable=1 \
			androidboot.usbcontroller=a600000.dwc3 \
			swiotlb=2048 \
			loop.max_part=7 \
			cgroup.memory=nokmem,nosocket \
			reboot=panic_warm swapaccount=0 \
			dhash_entries=131072 \
			ihash_entries=131072 \
			androidboot.hardware=timelm \
			androidboot.vendor.lge.arb_version=0 \
			buildvariant=eng \
			slub_debug=FZPU \
			kswitch \
			lge.touchid=0 \
			androidboot.vendor.lge.dd=4 \
			androidboot.product.hardware.sku=fgn \
			androidboot.vendor.lge.hw.revision=rev_10 \
			androidboot.vendor.lge.hw.subrev=subrev_1 \
			androidboot.product.lge.ddr_size=8517582848 \
			androidboot.vendor.lge.ddr_info=0x101004FF \
			audit_rate_limit=99 \
			audit_backlog_limit=99 \
			console=ttyMSM0,115200n8 \
			androidboot.console=ttyMSM0 \
			androidboot.vendor.lge.fingerprint_sensor=1 \
			androidboot.vendor.lge.gyro=1 \
			androidboot.vendor.lge.nfc.vendor=nxp \
			androidboot.vendor.lge.fmradio=1 \
			androidboot.vendor.lge.wmc=2 \
			androidboot.vendor.lge.capsensor=1 \
			androidboot.vendor.lge.hydra=Prime \
			androidboot.vendor.lge.sim_num=1 \
			androidboot.keymaster=1 \
			androidboot.bootdevice=1d84000.ufshc \
			androidboot.boot_devices=soc/1d84000.ufshc \
			androidboot.baseband=mdm \
			msm_drm.dsi_display0=qcom,mdss_dsi_sw43103_pv_fhd_dsc_cmd: \
			androidboot.dtbo_idx=1 \
			androidboot.dtb_idx=0

BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_RAMDISK_USE_LZ4 := true
TARGET_KERNEL_VERSION := 4.19
TARGET_KERNEL_SOURCE := kernel/lge/sm8250
TARGET_KERNEL_CONFIG := vendor/extracted-perf_defconfig

# Kernel modules
TARGET_MODULE_ALIASES := \
		adsp_loader_dlkm.ko:audio_adsp_loader.ko \
		apr_dlkm.ko:audio_apr.ko \
		bolero_cdc_dlkm.ko:audio_bolero_cdc.ko \
		es9218_dlkm.ko:audio_es9218.ko \
		hdmi_dlkm.ko:audio_hdmi.ko \
		machine_dlkm.ko:audio_machine_kona.ko \
		mbhc_dlkm.ko:audio_mbhc.ko \
		native_dlkm.ko:audio_native.ko \
		pinctrl_lpi_dlkm.ko:audio_pinctrl_lpi.ko \
		pinctrl_wcd_dlkm.ko:audio_pinctrl_wcd.ko \
		platform_dlkm.ko:audio_platform.ko \
		q6_dlkm.ko:audio_q6.ko \
		q6_notifier_dlkm.ko:audio_q6_notifier.ko \
		q6_pdr_dlkm.ko:audio_q6_pdr.ko \
		rx_macro_dlkm.ko:audio_rx_macro.ko \
		snd_event_dlkm.ko:audio_snd_event.ko \
		stub_dlkm.ko:audio_stub.ko \
		swr_ctrl_dlkm.ko:audio_swr_ctrl.ko \
		swr_dlkm.ko:audio_swr.ko \
		tfa9878_dlkm.ko:audio_tfa9878.ko \
		tx_macro_dlkm.ko:audio_tx_macro.ko \
		usf_dlkm.ko:audio_usf.ko \
		va_macro_dlkm.ko:audio_va_macro.ko \
		wsa881x_dlkm.ko:audio_wsa881x.ko \
		wcd938x_dlkm.ko:audio_wcd938x.ko \
		wcd938x_slave_dlkm.ko:audio_wcd938x_slave.ko \
		wcd9xxx_dlkm.ko:audio_wcd9xxx.ko \
		wcd_core_dlkm.ko:audio_wcd_core.ko \
		wsa_macro_dlkm.ko:audio_wsa_macro.ko \
		wlan.ko:qca_cld3_wlan.ko

# Media
TARGET_ENABLE_MEDIADRM_64 := true
TARGET_DISABLED_UBWC := false

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_EXFAT_DRIVER := sdfat
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE :=100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_PERSISTIMAGE_PARTITION_SIZE :=33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=104857600
BOARD_USERDATAIMAGE_PARTITION_SIZE :=102105948160
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_VENDORIMAGE_EXTFS_INODE_COUNT := -1
endif
BOARD_LGE_DYNAMIC_PARTITIONS_SIZE := 10736893952  # ( BOARD_SUPER_PARTITION_SIZE / 2 - 524288MB )
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE  := 1073741824 #(1GB)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE :=  3221225472 #( 3GB )
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE  := 1677721600 #( 1.6GB)
BOARD_SUPER_PARTITION_SIZE := 21474836480
BOARD_LGE_DYNAMIC_PARTITIONS_PARTITION_LIST := product system vendor
BOARD_SUPER_PARTITION_GROUPS := lge_dynamic_partitions
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext
TARGET_COPY_OUT_ODM := vendor/odm
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
BOARD_ROOT_EXTRA_FOLDERS := persdata vzw
BOARD_ROOT_EXTRA_SYMLINKS := \
		/mnt/product/eri:/eri \
		/mnt/product/carrier:/carrier \
		/mnt/product/quality:/vzw/quality \
		/mnt/vendor/absolute:/persdata/absolute

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := kona

# Power
TARGET_RPM_MASTER_STAT := "/sys/power/rpmh_stats/master_stats"
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/lge_touch/tap2wake"

#Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/props/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/props/vendor.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/props/odm.prop

# QTI
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Recovery
TARGET_RECOVERY_DENSITY := xhdpi
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/recovery.fstab
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 121
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# RIL
CUSTOM_APNS_FILE := $(DEVICE_PATH)/configs/apns-conf.xml
ENABLE_VENDOR_RIL_SERVICE := true

# SEPolicy
include device/qcom/sepolicy_vndr/SEPolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public

# Vendor Security Patch Level
VENDOR_SECURITY_PATCH := 2022-10-01

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := $(BOARD_HOSTAPD_DRIVER)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := $(BOARD_HOSTAPD_PRIVATE_LIB)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_EVENT := "ON"
CONFIG_IEEE80211AX := true
WIFI_FEATURE_HOSTAPD_11AX := true
DISABLE_EAP_PROXY := true
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
