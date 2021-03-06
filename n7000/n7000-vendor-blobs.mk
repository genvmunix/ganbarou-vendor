# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/samsung/n7000/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries

# Custom Ganbarou packages
PRODUCT_PACKAGES += \
    Wallpapers

PRODUCT_COPY_FILES := \
    vendor/samsung/n7000/proprietary/libril.so:obj/lib/libril.so \
    vendor/samsung/n7000/proprietary/libsecril-client.so:obj/lib/libsecril-client.so \
    vendor/samsung/n7000/proprietary/libmediayamahaservice.so:obj/lib/libmediayamahaservice.so \
    vendor/samsung/n7000/proprietary/libTVOut.so:obj/lib/libTVOut.so \
    vendor/samsung/n7000/proprietary/libfimc.so:obj/lib/libfimc.so

# RIL
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/rild:system/bin/rild \
    vendor/samsung/n7000/proprietary/libril.so:system/lib/libril.so \
    vendor/samsung/n7000/proprietary/libsec-ril.so:system/lib/libsec-ril.so \
    vendor/samsung/n7000/proprietary/libsecril-client.so:system/lib/libsecril-client.so

# AUDIO
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/alsa_amixer:system/bin/alsa_amixer \
    vendor/samsung/n7000/proprietary/alsa_aplay:system/bin/alsa_aplay \
    vendor/samsung/n7000/proprietary/alsa_ctl:system/bin/alsa_ctl \
    vendor/samsung/n7000/proprietary/alsa.default.so:system/lib/hw/alsa.default.so \
    vendor/samsung/n7000/proprietary/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so \
    vendor/samsung/n7000/proprietary/audio.primary.exynos4.so:system/lib/hw/audio.primary.exynos4.so \
    vendor/samsung/n7000/proprietary/audio_policy.exynos4.so:system/lib/hw/audio_policy.exynos4.so \
    vendor/samsung/n7000/proprietary/lib_Samsung_Acoustic_Module_Llite.so:system/lib/lib_Samsung_Acoustic_Module_Llite.so \
    vendor/samsung/n7000/proprietary/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so     vendor/samsung/n7000/proprietary/lib_Samsung_Sound_Booster.so:system/lib/lib_Samsung_Sound_Booster.so \
    vendor/samsung/n7000/proprietary/libasound.so:system/lib/libasound.so \
    vendor/samsung/n7000/proprietary/liblvvefs.so:system/lib/liblvvefs.so \
    vendor/samsung/n7000/proprietary/libmediayamaha.so:system/lib/libmediayamaha.so \
    vendor/samsung/n7000/proprietary/libmediayamaha_jni.so:system/lib/libmediayamaha_jni.so \
    vendor/samsung/n7000/proprietary/libmediayamaha_tuning_jni.so:system/lib/libmediayamaha_tuning_jni.so \
    vendor/samsung/n7000/proprietary/libmediayamahaservice.so:system/lib/libmediayamahaservice.so \
    vendor/samsung/n7000/proprietary/libsamsungAcousticeq.so:system/lib/libsamsungAcousticeq.so \
    vendor/samsung/n7000/proprietary/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so \
    vendor/samsung/n7000/proprietary/libyamahasrc.so:system/lib/libyamahasrc.so \
    vendor/samsung/n7000/proprietary/LVVEFS_Rx_Configuration.txt:system/etc/audio/LVVEFS_Rx_Configuration.txt \
    vendor/samsung/n7000/proprietary/LVVEFS_Tx_Configuration.txt:system/etc/audio/LVVEFS_Tx_Configuration.txt \
    vendor/samsung/n7000/proprietary/Rx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/Rx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/Tx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/Tx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
    vendor/samsung/n7000/proprietary/alsa.conf:system/usr/share/alsa/alsa.conf \
    vendor/samsung/n7000/proprietary/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    vendor/samsung/n7000/proprietary/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
    vendor/samsung/n7000/proprietary/default.conf:system/usr/share/alsa/pcm/default.conf \
    vendor/samsung/n7000/proprietary/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    vendor/samsung/n7000/proprietary/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    vendor/samsung/n7000/proprietary/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    vendor/samsung/n7000/proprietary/front.conf:system/usr/share/alsa/pcm/front.conf \
    vendor/samsung/n7000/proprietary/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    vendor/samsung/n7000/proprietary/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    vendor/samsung/n7000/proprietary/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    vendor/samsung/n7000/proprietary/side.conf:system/usr/share/alsa/pcm/side.conf \
    vendor/samsung/n7000/proprietary/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    vendor/samsung/n7000/proprietary/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    vendor/samsung/n7000/proprietary/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    vendor/samsung/n7000/proprietary/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    vendor/samsung/n7000/proprietary/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# EGL
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/gralloc.exynos4.so:system/lib/hw/gralloc.exynos4.so \
    vendor/samsung/n7000/proprietary/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    vendor/samsung/n7000/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/samsung/n7000/proprietary/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    vendor/samsung/n7000/proprietary/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    vendor/samsung/n7000/proprietary/libGLESv1_CM.so:system/lib/libGLESv1_CM.so \
    vendor/samsung/n7000/proprietary/libGLESv2.so:system/lib/libGLESv2.so \
    vendor/samsung/n7000/proprietary/libGLESv2_dbg.so:system/lib/libGLESv2_dbg.so \
    vendor/samsung/n7000/proprietary/libion.so:system/lib/libion.so \
    vendor/samsung/n7000/proprietary/libMali.so:system/lib/libMali.so \
    vendor/samsung/n7000/proprietary/libUMP.so:system/lib/libUMP.so

# HWCOMPOSER
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/hwcomposer.exynos4.so:system/lib/hw/hwcomposer.exynos4.so \
    vendor/samsung/n7000/proprietary/bintvoutservice:system/bin/bintvoutservice \
    vendor/samsung/n7000/proprietary/libcec.so:system/lib/libcec.so \
    vendor/samsung/n7000/proprietary/libddc.so:system/lib/libddc.so \
    vendor/samsung/n7000/proprietary/libedid.so:system/lib/libedid.so \
    vendor/samsung/n7000/proprietary/libfimc.so:system/lib/libfimc.so \
    vendor/samsung/n7000/proprietary/libhdmi.so:system/lib/libhdmi.so \
    vendor/samsung/n7000/proprietary/libhdmiclient.so:system/lib/libhdmiclient.so \
    vendor/samsung/n7000/proprietary/libTVOut.so:system/lib/libTVOut.so \
    vendor/samsung/n7000/proprietary/libtvout_jni.so:system/lib/libtvout_jni.so \
    vendor/samsung/n7000/proprietary/libtvoutinterface.so:system/lib/libtvoutinterface.so \
    vendor/samsung/n7000/proprietary/libtvoutservice.so:system/lib/libtvoutservice.so

# CAMERA
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/camera.exynos4.so:system/lib/hw/vendor-camera.exynos4.so \
    vendor/samsung/n7000/proprietary/libcaps.so:system/lib/libcaps.so \
    vendor/samsung/n7000/proprietary/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    vendor/samsung/n7000/proprietary/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv

# SENSORS
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/libakm.so:system/lib/libakm.so \
    vendor/samsung/n7000/proprietary/sensors.exynos4.so:system/lib/hw/sensors.exynos4.so

# GPS
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/gpsd:system/bin/gpsd \
    vendor/samsung/n7000/proprietary/gps.exynos4.so:system/lib/hw/gps.exynos4.so\
    vendor/samsung/n7000/proprietary/gps.cer:system/bin/gps.cer \
    vendor/samsung/n7000/proprietary/gps.xml:system/etc/gps.xml \
# WIFI
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/bcm4330B1.hcd:system/bin/bcm4330B1.hcd \
    vendor/samsung/n7000/proprietary/bcm4330_apsta.bin:system/etc/wifi/bcm4330_apsta.bin \
    vendor/samsung/n7000/proprietary/bcm4330_mfg.bin:system/etc/wifi/bcm4330_mfg.bin \
    vendor/samsung/n7000/proprietary/bcm4330_p2p.bin:system/etc/wifi/bcm4330_p2p.bin \
    vendor/samsung/n7000/proprietary/bcm4330_sta.bin:system/etc/wifi/bcm4330_sta.bin \
    vendor/samsung/n7000/proprietary/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    vendor/samsung/n7000/proprietary/nvram_mfg.txt_murata:system/etc/wifi/nvram_mfg.txt_murata \
    vendor/samsung/n7000/proprietary/nvram_mfg.txt_semcove:system/etc/wifi/nvram_mfg.txt_semcove \
    vendor/samsung/n7000/proprietary/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    vendor/samsung/n7000/proprietary/nvram_net.txt_murata:system/etc/wifi/nvram_net.txt_murata \
    vendor/samsung/n7000/proprietary/nvram_net.txt_semcove:system/etc/wifi/nvram_net.txt_semcove \

# NFC

# MFC Firmware
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/mfc_fw.bin:system/vendor/firmware/mfc_fw.bin

# LPM
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/immvibed:system/bin/immvibed \
    vendor/samsung/n7000/proprietary/lpmkey:system/bin/lpmkey \
    vendor/samsung/n7000/proprietary/playlpm:system/bin/playlpm \
    vendor/samsung/n7000/proprietary/battery_batteryerror.qmg:system/media/battery_batteryerror.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_5.qmg:system/media/battery_charging_5.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_10.qmg:system/media/battery_charging_10.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_100.qmg:system/media/battery_charging_100.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_15.qmg:system/media/battery_charging_15.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_20.qmg:system/media/battery_charging_20.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_25.qmg:system/media/battery_charging_25.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_30.qmg:system/media/battery_charging_30.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_35.qmg:system/media/battery_charging_35.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_40.qmg:system/media/battery_charging_40.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_45.qmg:system/media/battery_charging_45.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_50.qmg:system/media/battery_charging_50.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_55.qmg:system/media/battery_charging_55.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_60.qmg:system/media/battery_charging_60.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_65.qmg:system/media/battery_charging_65.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_70.qmg:system/media/battery_charging_70.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_75.qmg:system/media/battery_charging_75.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_80.qmg:system/media/battery_charging_80.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_85.qmg:system/media/battery_charging_85.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_90.qmg:system/media/battery_charging_90.qmg \
    vendor/samsung/n7000/proprietary/battery_charging_95.qmg:system/media/battery_charging_95.qmg \
    vendor/samsung/n7000/proprietary/battery_error.qmg:system/media/battery_error.qmg \
    vendor/samsung/n7000/proprietary/chargingwarning.qmg:system/media/chargingwarning.qmg \
    vendor/samsung/n7000/proprietary/Disconnected.qmg:system/media/Disconnected.qmg \
    vendor/samsung/n7000/proprietary/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/samsung/n7000/proprietary/PFFprec_600.emd:system/media/PFFprec_600.emd
# Samsung files
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/app/PolarisOffice.apk:system/app/PolarisOffice.apk \
    vendor/samsung/n7000/proprietary/apps/SamsungAppsUNAService.apk:system/apps/SamsungAppsUNAService.apk \
    vendor/samsung/n7000/proprietary/app/Mms.apk:system/app/Mms.apk \
    vendor/samsung/n7000/proprietary/etc/permissions/touchwiz.xml:system/etc/permissions/touchwiz.xml \
    vendor/samsung/n7000/proprietary/etc/permissions/secmediarecorder.xml:system/etc/permissions/secmediarecorder.xml \
    vendor/samsung/n7000/proprietary/framework/twframework.jar:system/framework/twframework.jar \
    vendor/samsung/n7000/proprietary/framework/twframework-res.apk:system/framework/twframework-res.apk \
    vendor/samsung/n7000/proprietary/framework/secmediarecorder.jar:system/framework/secmediarecorder.jar \
    vendor/samsung/n7000/proprietary/lib/libglcanvas.so:system/lib/libglcanvas.so \
    vendor/samsung/n7000/proprietary/lib/libpolarisoffice.so:system/lib/libpolarisoffice.so 
# GApps
PRODUCT_COPY_FILES += \
    vendor/samsung/n7000/proprietary/addon.d/70-gapps.sh:system/addon.d/70-gapps.sh \
    vendor/samsung/n7000/proprietary/addon.d/71-gapps-faceunlock.sh:system/addon.d/71-gapps-faceunlock.sh \
    vendor/samsung/n7000/proprietary/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/samsung/n7000/proprietary/app/FaceLock.apk:system/app/FaceLock.apk \
    vendor/samsung/n7000/proprietary/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/samsung/n7000/proprietary/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/samsung/n7000/proprietary/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/samsung/n7000/proprietary/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/samsung/n7000/proprietary/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/samsung/n7000/proprietary/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/samsung/n7000/proprietary/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/samsung/n7000/proprietary/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/samsung/n7000/proprietary/app/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
    vendor/samsung/n7000/proprietary/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/samsung/n7000/proprietary/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/samsung/n7000/proprietary/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/samsung/n7000/proprietary/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/samsung/n7000/proprietary/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/samsung/n7000/proprietary/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/samsung/n7000/proprietary/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/samsung/n7000/proprietary/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/samsung/n7000/proprietary/app/Talk.apk:system/app/Talk.apk \
    vendor/samsung/n7000/proprietary/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/samsung/n7000/proprietary/etc/g.prop:system/etc/g.prop \
    vendor/samsung/n7000/proprietary/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/samsung/n7000/proprietary/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/samsung/n7000/proprietary/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/samsung/n7000/proprietary/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/samsung/n7000/proprietary/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/samsung/n7000/proprietary/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/samsung/n7000/proprietary/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/samsung/n7000/proprietary/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/samsung/n7000/proprietary/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/samsung/n7000/proprietary/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/samsung/n7000/proprietary/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/samsung/n7000/proprietary/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/samsung/n7000/proprietary/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/samsung/n7000/proprietary/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/samsung/n7000/proprietary/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/samsung/n7000/proprietary/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/samsung/n7000/proprietary/lib/libfacelock_jni.so:system/lib/libfacelock_jni.so \
    vendor/samsung/n7000/proprietary/tts/lang_pico/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
    vendor/samsung/n7000/proprietary/tts/lang_pico/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
    vendor/samsung/n7000/proprietary/tts/lang_pico/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
    vendor/samsung/n7000/proprietary/tts/lang_pico/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
    vendor/samsung/n7000/proprietary/tts/lang_pico/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
    vendor/samsung/n7000/proprietary/tts/lang_pico/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
    vendor/samsung/n7000/proprietary/tts/lang_pico/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
    vendor/samsung/n7000/proprietary/tts/lang_pico/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-r0-ri30.4a/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-r0-ri30.4a/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rn30-ri30.5/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rn30-ri30.5/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rp30-ri30.5/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rp30-ri30.5/full_model.bin \
    vendor/samsung/n7000/proprietary/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N/full_model.bin:system/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N/full_model.bin \

