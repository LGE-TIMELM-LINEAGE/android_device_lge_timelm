#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 395dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
		RUN_POSTINSTALL_system=true \
		POSTINSTALL_PATH_system=system/bin/otapreopt_script \
		FILESYSTEM_TYPE_system=ext4 \
		POSTINSTALL_OPTIONAL_system=true
AB_OTA_POSTINSTALL_CONFIG += \
		RUN_POSTINSTALL_vendor=true \
		POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
		FILESYSTEM_TYPE_vendor=ext4 \
		POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
		checkpoint_gc \
		otapreopt_script

# ANT+
PRODUCT_PACKAGES += \
		AntHalService-Soong \
		com.dsi.ant@1.0.vendor

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Atrace
PRODUCT_PACKAGES += \
		android.hardware.atrace@1.0-service

# Audio
AUDIO_HAL_DIR := hardware/qcom-caf/sm8250/audio

PRODUCT_COPY_FILES += \
		$(AUDIO_HAL_DIR)/configs/common/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml \
		$(LOCAL_PATH)/audio/audio_configs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_configs.xml \
		$(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
		$(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
	 	$(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
	 	$(LOCAL_PATH)/audio/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
		$(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
		$(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
		$(LOCAL_PATH)/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
		$(LOCAL_PATH)/audio/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
		$(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/audio/mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_cdp.xml \
		$(LOCAL_PATH)/audio/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml \
		$(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
		$(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
		$(LOCAL_PATH)/audio/sound_trigger_mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_cdp.xml \
		$(LOCAL_PATH)/audio/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrd.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
		$(LOCAL_PATH)/audio/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
		$(LOCAL_PATH)/audio/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
		$(LOCAL_PATH)/audio/mirrorlink_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mirrorlink_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
		frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
		$(LOCAL_PATH)/configs/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
		frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
		frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
		frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
		$(LOCAL_PATH)/configs/audio_policy_configuration_lge.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_lge.xml \
		$(LOCAL_PATH)/configs/audio_policy_volumes_lge.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_lge.xml

PRODUCT_PACKAGES += \
		android.hardware.audio@6.0-impl \
		android.hardware.audio@5.0-impl \
		android.hardware.audio@4.0-impl \
		android.hardware.audio@2.0-impl \
		android.hardware.audio.effect@6.0-impl \
		android.hardware.audio.service \
		android.hardware.bluetooth.audio@2.0-impl \
		android.hardware.soundtrigger@2.3-impl \
		audio.bluetooth.default \
		audio.a2dp.default \
		libbluetooth \
		audio.primary.kona \
		audio.r_submix.default \
		audio.usb.default \
		audio_amplifier.kona \
		liba2dpoffload \
		libbatterylistener \
		libcomprcapture \
		libexthwplugin \
		libhdmiedid \
		libhfp \
		libqcompostprocbundle \
		libqcomvisualizer \
		libqcomvoiceprocessing \
		libsndmonitor \
		libspkrprot \
		libssrec \
		libvolumelistener \
		libaisound \
		libaudiohal \
		libaudiohal_deathhandler \
		libaudio-resampler \
		vendor.qti.hardware.btconfigstore@2.0.vendor \
		sound_trigger.primary.kona

# Authsecret
PRODUCT_PACKAGES += \
		android.hardware.authsecret@1.0-service-qti.vendor

# Bluetooth
PRODUCT_PACKAGES += \
		com.qualcomm.qti.bluetooth_audio@1.0:32 \
		android.hardware.bluetooth@1.0.vendor \
		android.hardware.bluetooth@1.0-impl-qti.vendor \
		vendor.qti.hardware.bluetooth_audio@2.0-impl.vendor \
		vendor.qti.hardware.bluetooth_audio@2.0 \
		vendor.qti.hardware.btconfigstore@1.0-impl.vendor \
		vendor.qti.hardware.btconfigstore@1.0.vendor \
		vendor.qti.hardware.capabilityconfigstore@1.0.vendor \
		android.hardware.configstore@1.1 \
		libbluetooth_jni:64 \
		libbluetooth \
		libbluetooth_qti


PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
		frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080

# Boot control
PRODUCT_PACKAGES += \
		android.hardware.boot@1.1-impl-qti \
		android.hardware.boot@1.1-impl-qti.recovery \
		android.hardware.boot@1.1-service \
		bootctrl.kona \
		bootctrl.kona.recovery

PRODUCT_PACKAGES_DEBUG += \
		bootctl

# Camera
PRODUCT_PACKAGES += \
		libyuv:64 \
		libexif:64 \
		vendor.qti.hardware.camera.postproc@1.0.vendor \
		android.hardware.camera.provider@2.4-impl \
		android.hardware.camera.provider@2.4-service_64 \
		vendor.qti.hardware.camera.device@1.0.vendor \
		libcamera2ndk_vendor

# Cgroup configurations
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/cgroups/cgroups.json:$(TARGET_COPY_OUT_SYSTEM)/etc/cgroups.json \
		$(LOCAL_PATH)/configs/cgroups/cgroups_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
		$(LOCAL_PATH)/configs/cgroups/task_profiles.json:$(TARGET_COPY_OUT_SYSTEM)/etc/task_profiles.json \
		$(LOCAL_PATH)/configs/cgroups/task_profiles_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json \

# Component overrides
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/component-overrides.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/component-overrides.xml

# Configs
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/aisound_tune.xml:$(TARGET_COPY_OUT_VENDOR)/etc/aisound_tune.xml \
		$(LOCAL_PATH)/configs/ftm_test_config:$(TARGET_COPY_OUT_VENDOR)/etc/ftm_test_config \
		$(LOCAL_PATH)/configs/gpfspath_oem_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gpfspath_oem_config.xml \
		$(LOCAL_PATH)/configs/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
		$(LOCAL_PATH)/configs/per_app_desc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/per_app_desc.xml \
		$(LOCAL_PATH)/configs/ph_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ph_config.xml \
		$(LOCAL_PATH)/configs/privapp-permissions-lge-timelm-laop.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-lge-timelm-laop.xml \
		$(LOCAL_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-qti.xml \
		$(LOCAL_PATH)/configs/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml \
		$(LOCAL_PATH)/configs/privapp-permissions-timelm.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-timelm.xml \
		$(LOCAL_PATH)/configs/prm_custom_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/prm_custom_config.xml \
		$(LOCAL_PATH)/configs/qdcm_calib_data_SW43103_cmd_mode_dsc_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_SW43103_cmd_mode_dsc_dsi_panel.xml \
		$(LOCAL_PATH)/configs/qvaconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qvaconfig.xml \
		$(LOCAL_PATH)/configs/streamsoundoptimizer_whitelistapps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/streamsoundoptimizer_whitelistapps.xml \
		$(LOCAL_PATH)/configs/system_properties.xml:$(TARGET_COPY_OUT_VENDOR)/etc/system_properties.xml \
		$(LOCAL_PATH)/configs/wfdconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wfdconfig.xml \
		$(LOCAL_PATH)/configs/whitelistedplayerapps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/whitelistedplayerapps.xml \
		$(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config \
		$(LOCAL_PATH)/configs/passwd:$(TARGET_COPY_OUT_VENDOR)/etc/passwd

# Context Hub
PRODUCT_PACKAGES += \
		android.hardware.contexthub@1.0

# Device ID attestation
PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml

# Display
PRODUCT_PACKAGES += \
		vendor.qti.hardware.display.allocator@1.0.vendor \
		vendor.qti.hardware.display.allocator@3.0.vendor \
		android.hardware.graphics.mapper@3.0-impl-qti-display \
		android.hardware.graphics.mapper@4.0-impl-qti-display \
		android.hardware.memtrack@1.0-impl \
		android.hardware.memtrack@1.0-service \
		gralloc.kona \
		lights.kona \
		libdisplayconfig.qti.vendor \
		libqdutils:32 \
		libqservice:32 \
		libqdMetaData \
		libqdMetaData.system \
		libsdmcore \
		libsdmutils \
		libtinyxml \
		libvulkan \
		memtrack.kona \
		vendor.display.config@1.0.vendor \
		vendor.display.config@1.1.vendor \
		vendor.display.config@1.2.vendor \
		vendor.display.config@1.3.vendor \
		vendor.display.config@1.4.vendor \
		vendor.display.config@1.5.vendor \
		vendor.display.config@1.6.vendor \
		vendor.display.config@1.7.vendor \
		vendor.display.config@1.8.vendor \
		vendor.display.config@1.9.vendor \
		vendor.display.config@1.11.vendor \
	  vendor.display.config@2.0.vendor \
		vendor.qti.hardware.display.mapper@1.0 \
		vendor.qti.hardware.display.mapper@1.1 \
		vendor.qti.hardware.display.mapper@2.0 \
		vendor.qti.hardware.display.mapper@3.0 \
		vendor.qti.hardware.display.mapper@4.0 \
		vendor.qti.hardware.display.mapperextensions@1.0 \
		vendor.qti.hardware.display.mapperextensions@1.1 \
		vendor.lge.hardware.display.general@1.0.vendor \
		vendor.lge.hardware.display.tune@1.0.vendor \
		vendor.lge.hardware.display.uvevent@1.0.vendor \
		vendor.qti.hardware.display.allocator-service \
		vendor.qti.hardware.display.composer-service \
		vendor.qti.hardware.display.allocator@1.0 \
		vendor.qti.hardware.display.allocator@2.0 \
		vendor.qti.hardware.display.allocator@3.0 \
		vendor.qti.hardware.display.composer@1.0 \
		vendor.qti.hardware.display.composer@2.0 \
		vendor.qti.hardware.display.composer@3.0 \
		vendor.qti.hardware.display.mapper@1.0.vendor \
		vendor.qti.hardware.display.mapper@1.1.vendor \
		vendor.qti.hardware.display.mapper@2.0.vendor \
		vendor.qti.hardware.display.mapper@3.0.vendor \
		vendor.qti.hardware.display.mapper@4.0.vendor

# Doze
PRODUCT_PACKAGES += \
		 LgeDoze

# DRM
PRODUCT_PACKAGES += \
		android.hardware.drm@1.3.vendor \
		android.hardware.drm@1.3 \
		android.hardware.drm@1.3-service.clearkey

# fastbootd
PRODUCT_PACKAGES += \
		android.hardware.fastboot@1.1-impl-custom \
		fastbootd

# Fingerprint
PRODUCT_PACKAGES += \
		android.hardware.biometrics.fingerprint@2.3-service.lge_kona \
		libshims_fingerprint.lge

# Gatekeeper
PRODUCT_PACKAGES += \
		android.hardware.gatekeeper@1.0.vendor

# GPS
PRODUCT_PACKAGES += \
   android.hardware.gnss.measurement_corrections@1.1.vendor \
	 android.hardware.gnss.visibility_control@1.0.vendor \
	 android.hardware.gnss@2.1.vendor

# GPS
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
		$(LOCAL_PATH)/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
		$(LOCAL_PATH)/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
		$(LOCAL_PATH)/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
		$(LOCAL_PATH)/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
		$(LOCAL_PATH)/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Graphics
PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
		frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
		frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
		frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
		frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml

# Health
PRODUCT_PACKAGES += \
		android.hardware.health@2.1-impl \
		android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
		libhidltransport \
		libhidltransport.vendor \
		libhwbinder \
		libhwbinder.vendor

# Hotword enrollment
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# Init
PRODUCT_PACKAGES += \
		init.class_main.sh \
		init.crda.sh \
		init.kona.rc \
		init.lge.atd.rc \
		init.lge.audio.rc \
		init.lge.display.rc \
		init.lge.fingerprints.rc \
		init.lge.forced_usb_path_change.sh \
		init.lge.power.rc \
		init.lge.sensors.rc \
		init.lge.svelte.rc \
		init.lge.usb.configfs.rc \
		init.lge.usb.default.sh \
		init.lge.usb.diag.sh \
		init.lge.usb.lao.sh \
		init.lge.usb.rc \
		init.lge.usb.sh \
		init.lge.zramswap.sh \
		init.mdm.sh \
		init.mid.rc \
		init.mid.service.rc \
		init.miniOS.aat.rc \
		init.miniOS.atd.rc \
		init.miniOS.config.rc \
		init.miniOS.crash.sh \
		init.miniOS.h20.rc \
		init.miniOS.h30.rc \
		init.miniOS.mfts.rc \
		init.miniOS.pre_selfde.rc \
		init.miniOS.rc \
		init.miniOS.selfd.rc \
		init.miniOS.service.rc \
		init.miniOS.slide.rc \
		init.miniOS.taio.rc \
		init.qcom.class_core.sh \
		init.qcom.coex.sh \
		init.qcom.early_boot.sh \
		init.qcom.post_boot.sh \
		init.qcom.rc \
		init.qcom.sdio.sh \
		init.qcom.sh \
		init.qcom.usb.rc \
		init.qcom.usb.sh \
		init.qti.chg_policy.sh \
		init.qti.dcvs.sh \
		init.qti.media.sh \
		init.qti.qcv.sh \
		init.recovery.timelm.rc \
		init.target.rc \
		init.target.wigig.rc \
		init.timelm_vendor.rc \
		system_ext_init.timelm_vendor.rc \
		system_ext_init.timelm.rc \
		init.sm8250.crash.sh\
		ueventd.timelm.rc \
		init.lge.svelte.rc \
		init.mid.rc \
		init.mid.service.rc \
		init.miniOS.rc \
		fstab.qcom \
		fstab.timelm \
		init.recovery.timelm.rc \
		com.qualcomm.qti.sigma_miracast@1.0-service.rc \
		dpmd.rc \
		init.laop.rc \
		init.lge.ims.rc \
		init.lge.iwlan.rc \
		init.lge.modem_dump.rc \
		init.lge.smartdm.rc \
		init.lge.system_ext.on_boot.rc \
		init.lge.system_ext.on_fs.rc \
		init.lge.system_ext.on_init.rc \
		init.lge.system_ext.on_post_fs_data.rc \
		init.lge.system_ext.on_post_fs.rc \
		init.lge.system_ext.on_property.rc \
		init.lge.system_ext.services.rc \
		init.lge.system.kernel.rc \
		init.lge.system.log.rc \
		init.qti.bt.logger.rc \
		init.smartca.rc \
		init.time_in_state.sh \
		init.timelm_product.rc \
		init.timelm.rc \
		lgdebuggerd.rc \
		lgdrmserver.rc \
		lgupdate_verifier.rc \
		lgupdate.rc \
		perfservice.rc \
		qspmsvc.rc \
		qvrd_ext.rc \
		system.lge.power.chglogo.modem.rc \
		system.lge.power.rc \
		vendor.lge.hardware.filehandle@1.0-service.rc \
		init.qcom.sensors.sh \
		wfdservice.rc \
		mlimd.rc \
		tcmd.rc \
		init.qti.ufs.rc \
		modem_log_postproc.sh \
		modem_log_precond.sh \
		ueventd.vendor.rc

# IPACM
PRODUCT_PACKAGES += \
		ipacm \
		libipanat \
		liboffloadhal \
		IPACM_cfg.xml

# Keylayout
PRODUCT_PACKAGES += \
		$(LOCAL_PATH)/keylayout/:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
		$(LOCAL_PATH)/keylayout/:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_1004_Product_637a.kl

# Keymaster
PRODUCT_PACKAGES += \
		android.hardware.keymaster@4.1.vendor

# Live Display
PRODUCT_PACKAGES += \
		vendor.lineage.livedisplay@2.0-service.lge_kona

# Media
PRODUCT_PACKAGES += \
		android.hardware.media.c2 \
 		libvorbisidec		\
		libwatchdog.system \
		libnbaio:64 \
		android.hardware.renderscript@1.0-impl

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
		$(LOCAL_PATH)/media/media_codecs_kona.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona.xml \
		$(LOCAL_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
		$(LOCAL_PATH)/media/media_codecs_performance_kona.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_kona.xml \
		$(LOCAL_PATH)/media/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
		$(LOCAL_PATH)/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
		$(LOCAL_PATH)/media/media_profiles.vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
		$(LOCAL_PATH)/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_ODM)/etc/media_profiles_V1_0.xml \
		$(LOCAL_PATH)/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \
		$(LOCAL_PATH)/media/media_profiles_kona.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_kona.xml \
		$(LOCAL_PATH)/media/media_codecs_lge.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_lge.xml \
		$(LOCAL_PATH)/media/media_profiles.ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/media_profiles.xml \
		$(LOCAL_PATH)/configs/brunch_media_parser.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/brunch_media_parser.xml \
		$(LOCAL_PATH)/configs/brunch_notusedcodecs.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/brunch_notusedcodecs.xml \
		$(LOCAL_PATH)/configs/brunch_player_list.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/brunch_player_list.xml


PRODUCT_COPY_FILES += \
		frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

PRODUCT_PACKAGES += \
		libavservices_minijail \
		libavservices_minijail.vendor \

# Miscellaneous
PRODUCT_PACKAGES += \
		libfdt \
		android.hardware.automotive.vehicle@2.0-manager-lib \
		android.hardware.cas@1.2 \
		CACertService \
		CneApp \
		cppreopts.sh \
		dpmserviceapp \
		ImsRcsService \
		IWlanService \
		libcirrusspkrprot \
		libclang_rt.ubsan_standalone-arm-android \
		libcurl \
		libdrm \
		libgfxstream_backend:64 \
		libgui_vendor:32 \
		libjsoncpp \
		libkeyutils:32 \
		liblogwrap:32 \
		liblz4 \
		libminui \
		libnbaio \
		libpatchcodeid \
		libpatchcodeid \
		libpatchcodeid_vendor \
		libpatchcodeid_vendor \
		libpatchcodeid.vendor:32 \
		libpsi.vendor \
		libtextclassifier \
		libtextclassifier_hash \
		libtflite \
		nqnfcinfo \
		preloads_copy.sh \
		preopt2cachename \
		sg_write_buffer \
		TimeService \
		tinymix \
		tinyplay \
		tombstoned \
		vendor.qti.hardware.fstman@1.0.vendor:64 \
		WfdCommon

# NFC
PRODUCT_SOONG_NAMESPACES += \
		vendor/nxp/opensource/pn5xx

PRODUCT_PACKAGES += \
		android.hardware.nfc@1.2-service \
		android.hardware.nfc@1.2 \
		android.hardware.secure_element@1.2.vendor \
		com.android.nfc_extras \
		NfcNci \
		nqnfcinfo \
		Tag \
		vendor.nxp.nxpese@1.0.vendor:64 \
		vendor.nxp.nxpnfc@2.0 \
		vendor.nxp.nxpnfclegacy@1.0

PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.ese.xml \
		frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
		frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
		frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
		frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
		frameworks/native/data/etc/android.hardware.se.omapi.ese.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.ese.xml \
		frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.uicc.xml \
		frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml

# Net
PRODUCT_PACKAGES += \
		netutils-wrapper-1.0 \
		libnetfilter_conntrack:32 \
		libnfnetlink:32 \
		android.system.net.netd@1.1.vendor

# Neural Networks
PRODUCT_PACKAGES += \
			android.hardware.neuralnetworks@1.3.vendor

# OMX
PRODUCT_PACKAGES += \
		init.qti.media.sh \
		libOmxAacEnc \
		libOmxAmrEnc \
		libOmxCore \
		libOmxEvrcEnc \
		libOmxG711Enc \
		libOmxQcelp13Enc \
		libOmxVdec \
		libOmxVenc \
		libc2dcolorconvert  \
		libmm-omxcore \
		libcodec2_hidl@1.0.vendor \
		libcodec2_vndk.vendor \
		libOmxVidcCommon \
		libstagefrighthw \
		libstagefright_bufferpool@2.0.1.vendor \
		libstagefright_softomx.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
		$(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGES += \
		FrameworksRes \
		TelephonyRes \
		LgeSettingsProviderRes \
		LgeSettingsRes \
		LgeSystemUIRes \
		CarrierConfigRes \
		LgeWifiOverlay \
		LgeTetheringOverlay


PRODUCT_PACKAGES += \
		NoCutoutOverlay

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Permission
PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
		frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
		frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
		frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
		frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
		frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
		frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
		frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
		frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
		frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
		frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
		frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
		frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
		frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.uicc.xml \
		frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
		frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
		frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
		frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
		frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
		frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
		frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
		frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
		frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
		frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
		frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
		frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
		frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
		frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
		frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
		frameworks/native/data/etc/android.hardware.wifi.aware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.aware.xml \
		frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
		frameworks/native/data/etc/android.hardware.wifi.rtt.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.rtt.xml \
		frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
		frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
		frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
		frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
		frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
		frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
		frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml

# Power
PRODUCT_PACKAGES += \
		android.hardware.power-service-qti \
		android.hardware.power@1.2 \
		vendor.qti.hardware.perf@2.2.vendor

# Privapp props
PRODUCT_PROPERTY_OVERRIDES := \
ro.control_privapp_permissions=log

# Protobuf
PRODUCT_PACKAGES += \
		libprotobuf-cpp-full-vendorcompat \
		libprotobuf-cpp-lite-vendorcompat

# Public libraries
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# QMI
PRODUCT_PACKAGES += \
		libjson \
		libqti_vndfwk_detect \
		libvndfwk_detect_jni.qti.vendor

# Quad DAC
PRODUCT_PACKAGES += \
		quad_dac \
		QuadDacTile

# RIL
PRODUCT_PACKAGES += \
		android.hardware.radio@1.6 \
		android.hardware.radio@1.5.vendor \
		android.hardware.radio.config@1.2.vendor \
		android.hardware.radio.deprecated@1.0.vendor \
		android.hardware.radio.deprecated@1.0 \
		android.hardware.radio.config@1.0 \
		libprotobuf-cpp-full \
		librmnetctl

# Seccomp policy
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
		$(LOCAL_PATH)/seccomp_policy/imsrtp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/imsrtp.policy \
		$(LOCAL_PATH)/seccomp_policy/atfwd@2.0.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/atfwd@2.0.policy \
		$(LOCAL_PATH)/seccomp_policy/qspm.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/qspm.policy \
		$(LOCAL_PATH)/seccomp_policy/qti-systemd.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/qti-systemd.policy \
		$(LOCAL_PATH)/seccomp_policy/vendor.qti.hardware.dsp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/vendor.qti.hardware.dsp.policy \
		$(LOCAL_PATH)/seccomp_policy/wfdhdcphalservice.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/wfdhdcphalservice.policy \
		$(LOCAL_PATH)/seccomp_policy/wfdvndservice.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/wfdvndservice.policy \
		$(LOCAL_PATH)/seccomp_policy/wifidisplayhalservice.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/wifidisplayhalservice.policy

# Sensors
PRODUCT_PACKAGES += \
		sensors.lge \
		android.hardware.sensors@2.0-service.multihal \
	 	android.hardware.sensors@2.0-ScopedWakelock \
		android.hardware.sensors@2.0-ScopedWakelock.vendor \
		libsensorndkbridge

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Service tracker
PRODUCT_PACKAGES += \
		vendor.qti.hardware.systemhelper@1.0 \
		vendor.qti.hardware.servicetracker@1.0 \
		vendor.qti.hardware.servicetracker@1.1 \
		vendor.qti.hardware.servicetracker@1.2 \
		vendor.qti.hardware.servicetracker@1.2.vendor

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
		$(LOCAL_PATH) \
		hardware/lge

# Surface Flinger props
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
		ro.surface_flinger.has_wide_color_display=true \
		ro.surface_flinger.has_HDR_display=true \
		ro.surface_flinger.use_color_management=true \
		ro.surface_flinger.wcg_composition_dataspace=143261696 \
		ro.surface_flinger.protected_contents=true \
		ro.surface_flinger.set_touch_timer_ms=200 \
		ro.surface_flinger.force_hwc_copy_for_virtual_displays=true

# Telephony
PRODUCT_PACKAGES += \
		extphonelib \
		extphonelib-product \
		extphonelib.xml \
		extphonelib_product.xml \
		ims-ext-common \
		ims_ext_common.xml \
		qti-telephony-hidl-wrapper \
		qti-telephony-hidl-wrapper-prd \
		qti_telephony_hidl_wrapper.xml \
		qti_telephony_hidl_wrapper_prd.xml \
		qti-telephony-utils \
		qti-telephony-utils-prd \
		qti_telephony_utils.xml \
		qti_telephony_utils_prd.xml \
		telephony-ext \
		QtiTelephony \
		QtiTelephonyService

PRODUCT_BOOT_JARS += \
		telephony-ext

PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
		frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
		frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml

# Thermal
PRODUCT_PACKAGES += \
		android.hardware.thermal@2.0 \
		libfastcvopt \
		libthermalclient \
		libvpx \
		libsonivox \
		libaudio-resampler:64

# Touch
PRODUCT_PACKAGES += \
		vendor.lineage.touch@1.0-service.lge_kona

# Update engine
PRODUCT_PACKAGES += \
		update_engine \
		update_engine_sideload \
		update_verifier

PRODUCT_PACKAGES_DEBUG += \
		update_engine_client

# USB
PRODUCT_PACKAGES += \
		libusbconfigfs \
		android.hardware.usb@1.3-service-qti \
		android.hardware.usb.gadget@1.0-service-qti


PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
		frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml

# Vendor service manager
PRODUCT_PACKAGES += \
		vndservicemanager

# Vendor libstdc++
PRODUCT_PACKAGES += \
		libstdc++.vendor

# Vibrator
PRODUCT_PACKAGES += \
		android.hardware.vibrator@1.3 \
		vendor.lge.hardware.vibrator@2.0-impl-immersion \
		vendor.lge.hardware.vibrator@2.0-service-immersion \
		vendor.lge.hardware.vibrator@2.0 \
		vendor.qti.hardware.vibrator.impl.lge \
		vendor.qti.hardware.vibrator.service.lge \
		vendor.qti.hardware.vibrator.offload.impl.lge \
		immvibed

PRODUCT_COPY_FILES += \
		vendor/qcom/opensource/vibrator/excluded-input-devices.xml:$(TARGET_COPY_OUT_VENDOR)/etc/excluded-input-devices.xml

# VNDK
BOARD_VNDK_VERSION := current
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_PACKAGES += \
    vndk_package

# WiFi
PRODUCT_PACKAGES += \
		android.hardware.wifi@1.0 \
		hostapd \
		wpa_cli \
		libwpa_client \
		libwifi-hal \
		libwifi-hal-ctrl \
		libwifi-hal-qcom \
		WifiResCommon \
		wpa_supplicant \
		wpa_supplicant.conf \
		p2p_supplicant \
		p2p_supplicant.conf \
		wigig_supplicant \
		wigig_p2p_supplicant \
		wigig_supplicant \
		wififtmd \
		wifi_runtime_conf.sh \
		wigighalsvc \
		wigignpt \
		wigig_wiburn \
		vendor.qti.hardware.fstman@1.0:64

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
		$(LOCAL_PATH)/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini \
		$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
		$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# WiFi Display
PRODUCT_PACKAGES += \
		libnl \
		libwfdaac_vendor

PRODUCT_BOOT_JARS += \
		WfdCommon

# Get non-open-source specific aspects
$(call inherit-product, vendor/lge/timelm/timelm-vendor.mk)
