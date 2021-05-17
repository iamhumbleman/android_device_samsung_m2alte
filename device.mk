#
# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
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
#

LOCAL_PATH := device/samsung/m2alte

# Overlays
 DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/configs/overlay
# ===

# Device uses high-density artwork where available
 PRODUCT_AAPT_CONFIG := normal
 PRODUCT_AAPT_PREF_CONFIG := xhdpi
# ===

# HW composer / Graphics
PRODUCT_PACKAGES += \
   hwcomposer.exynos5 \
   gralloc.exynos5 \

# ===
# Display
PRODUCT_PACKAGES += \
   libExynosHWCService \
   libfimg \
   libfimg2d_board
# ===

# DRM
 PRODUCT_PACKAGES += \
   libdrmwvmplugin \
   libwvdrmengine \
   libwvdrm_L1 \
   libwvm \
   libWVStreamControlAPI_L1

# Keystore / sll_engine
 PRODUCT_PACKAGES += \
   keystore.exynos5
# ===

# Keylayouts / keyboard
 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/keylayout/AVRCP.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/AVRCP.kl\
   $(LOCAL_PATH)/configs/keylayout/Generic.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Generic.kl\
   $(LOCAL_PATH)/configs/keylayout/qwerty.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qwerty.kl #\
   $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
   $(LOCAL_PATH)/keylayout/sec_touchkey.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sec_touchkey.kl\
# ===

# Touchscreen
 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/idc/ft5x06_ts.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/ft5x06_ts.idc \
   $(LOCAL_PATH)/configs/idc/qwerty.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty.idc \
   $(LOCAL_PATH)/configs/idc/qwerty2.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty2.idc \
   $(LOCAL_PATH)/configs/idc/sec_keyboard.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/sec_keyboard.idc \
   $(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/Synaptics_HID_TouchPad.idc \
   $(LOCAL_PATH)/configs/keychars/Generic.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/Generic.kcm \
   $(LOCAL_PATH)/configs/keychars/qwerty.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/qwerty.kcm \
   $(LOCAL_PATH)/configs/keychars/qwerty2.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/qwerty2.kcm \
   $(LOCAL_PATH)/configs/keychars/Virtual.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/Virtual.kcm

# GPS IMH
 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/gps/gps.cer:$(TARGET_COPY_OUT_VENDOR)/bin/gps/gps.cer \
   $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/bin/gps/gps.conf \
   $(LOCAL_PATH)/configs/gps/gps.xml:$(TARGET_COPY_OUT_VENDOR)/bin/gps/gps.xml
#

# Boot animation
 TARGET_SCREEN_HEIGHT := 1280
 TARGET_SCREEN_WIDTH := 720

 PRODUCT_PACKAGES += \
   power.exynos5 \

 PRODUCT_PACKAGES += \
   fstab.universal5260 \
   init.universal5260.rc \
   init.universal5260.usb.rc \
   init.wifi.rc \
   ueventd.universal5260.rc

# Audio
 PRODUCT_PACKAGES += \
   audio.primary.universal5260 \
   audio.a2dp.default \
   audio.r_submix.default \
   audio.usb.default \
   libtinyxml 


 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_effects.xml \
   $(LOCAL_PATH)/configs/audio/ysound.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/ysound.xml \
   $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
   frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_volumes.xml \
   frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/a2dp_audio_policy_configuration.xml \
   frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/default_volume_tables.xml \
   frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/r_submix_audio_policy_configuration.xml \
   frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/usb_audio_policy_configuration.xml \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_adc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_adc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_ae0_through.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_ae0_through.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_ae1_through.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_ae1_through.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_fifo.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_cdsp_a_voice_fifo.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_nb.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_cdsp_a_voice_nb.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_param.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_cdsp_a_voice_param.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_vbox.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_cdsp_a_voice_vbox.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_wb.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_cdsp_a_voice_wb.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_config.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_config.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_control_path_off.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_control_path_off.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_control_path_resume.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_control_path_resume.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_24khz_2mic_bi.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_24khz_2mic_bi.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_24khz_2mic_uni.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_24khz_2mic_uni.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_24khz_vbox_rec.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_24khz_vbox_rec.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_1mic.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_bypass_1mic.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_nb.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_bypass_nb.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_nb_bt.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_bypass_nb_bt.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_voip.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_bypass_voip.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_wb.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_bypass_wb.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_wb_bt.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_bypass_wb_bt.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_chsel_rec.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_chsel_rec.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef00_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef00_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef01_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef01_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef02_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef02_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef03_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef03_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_coef04_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_coef04_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef00_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef00_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef01_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef01_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef02_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef02_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef03_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef03_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6n_vt_coef04_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6n_vt_coef04_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef00_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef00_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef00_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef00_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef00_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef00_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef00_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef00_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef01_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef01_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef01_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef01_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef01_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef01_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef01_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef01_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef02_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef02_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef02_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef02_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef02_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef02_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef02_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef02_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef03_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef03_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef03_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef03_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef03_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef03_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef03_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef03_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef04_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef04_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef04_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef04_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef04_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef04_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef04_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef04_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef05_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef05_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef05_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef05_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef05_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef05_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef05_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef05_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef06_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef06_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef06_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef06_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef06_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef06_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6sw_coef06_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6sw_coef06_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef00_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef00_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef01_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef01_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef02_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef02_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef03_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef03_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef04_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef04_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_coef05_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_coef05_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef00_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef00_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef01_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef01_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef02_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef02_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef03_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef03_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef04_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef04_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type0_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type0_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type0_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type0_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type1_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type1_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type1_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type1_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type2_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type2_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type2_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type2_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type3_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type3_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_sm6w_vt_coef05_type3_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_fdsp_sm6w_vt_coef05_type3_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_chsel.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_chsel.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_chsel_src.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_chsel_src.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_chsel_svoice.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_chsel_svoice.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_common_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_common_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_common_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_common_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_vbox_cp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_nb_vbox_cp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_swb_common_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_swb_common_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_swb_vbox_cp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_swb_vbox_cp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_vbox.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_voip_vbox.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_common_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_common_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_common_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_common_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_common_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_common_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_common_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_common_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_common_rc.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_common_rc.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_common_sp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_common_sp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_svoice_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_svoice_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_svoicecar_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_svoicecar_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_vbox_cp.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_vbox_cp.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_vbox_svoice.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hf50_wb_vbox_svoice.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_hp_dac0.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_hp_dac0.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_line1_dac0.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_line1_dac0.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_line2_dac1.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_line2_dac1.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_lrmix.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_lrmix.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_lrmix_dac1.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_lrmix_dac1.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_rc_dac0.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_rc_dac0.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_sidetone.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_sidetone.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_sidetone_vol_nb.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_sidetone_vol_nb.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_sidetone_vol_wb.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_sidetone_vol_wb.dat \
   $(LOCAL_PATH)/configs/audio/ymc/param/aec_sp_dac1.dat:$(TARGET_COPY_OUT_VENDOR)/etc/ymc/param/aec_sp_dac1.dat



# Bluetooth
PRODUCT_PACKAGES += \
   bcm4334 \
   bcm4335 \
   BT_FW_VER_BCM4334B0_002.001.013.1792.1813_M2_3G_B52 \
   libbt-vendor

# Lights
 PRODUCT_PACKAGES += \
   lights.exynos5

# NFC
 PRODUCT_PACKAGES += \
   libpn547_fw \
   libpn547_fw_pku \
   libpn547_fw_platform

# Set default interface
  OVERRIDES += \
   persist.sys.storage_preload=1 \
   persist.demo.hdmirotationlock=false \
   persist.sys.dalvik.vm.lib=libdvm.so

# DONE
# Media
 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
   $(LOCAL_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml
# ===

# Samsung
 PRODUCT_PROPERTY_OVERRIDES += \
   ro.opengles.version=196608
# ===

#IHM
# Wifi / DHCPCD
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/wifi/bcmdhd_apsta.bin_b2:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_apsta.bin_b2 \
   $(LOCAL_PATH)/configs/wifi/bcmdhd_mfg.bin_b2:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_mfg.bin_b2 \
   $(LOCAL_PATH)/configs/wifi/bcmdhd_p2p.bin_b2:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_p2p.bin_b2 \
   $(LOCAL_PATH)/configs/wifi/bcmdhd_sta.bin_b2:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_sta.bin_b2 \
   $(LOCAL_PATH)/configs/wifi/cred.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cred.conf \
   $(LOCAL_PATH)/configs/wifi/nvram_mfg.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/nvram_mfg.txt \
   $(LOCAL_PATH)/configs/wifi/nvram_net.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/nvram_net.txt \
   $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
   $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
   $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
   $(LOCAL_PATH)/configs/dhcpcd/dhcpcd.conf:$(TARGET_COPY_OUT_VENDOR)/etc/dhcpcd/dhcpcd.conf \
   $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-run-hooks:$(TARGET_COPY_OUT_VENDOR)/etc/dhcpcd/dhcpcd-run-hooks \
   $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/20-dns.conf:$(TARGET_COPY_OUT_VENDOR)/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
   $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/95-configured:$(TARGET_COPY_OUT_VENDOR)/etc/dhcpcd/dhcpcd-hooks/95-configured
# ===

# Permissions
 PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/permissions/allshare_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/allshare_library.xml \
   frameworks/native/data/etc/permissions/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \
   frameworks/native/data/etc/permissions/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
   frameworks/native/data/etc/permissions/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
   frameworks/native/data/etc/permissions/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
   frameworks/native/data/etc/permissions/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
   frameworks/native/data/etc/permissions/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
   frameworks/native/data/etc/permissions/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
   frameworks/native/data/etc/permissions/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
   frameworks/native/data/etc/permissions/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
   frameworks/native/data/etc/permissions/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
   frameworks/native/data/etc/permissions/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
   frameworks/native/data/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
   frameworks/native/data/etc/permissions/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
   frameworks/native/data/etc/permissions/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
   frameworks/native/data/etc/permissions/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
   frameworks/native/data/etc/permissions/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
   frameworks/native/data/etc/permissions/android.software.live_wallpaper.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.live_wallpaper.xml \
   frameworks/native/data/etc/permissions/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
   frameworks/native/data/etc/permissions/android.software.sip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.xml \
   frameworks/native/data/etc/permissions/com.android.location.provider.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.location.provider.xml \
   frameworks/native/data/etc/permissions/com.android.media.remotedisplay.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.media.remotedisplay.xml \
   frameworks/native/data/etc/permissions/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
   frameworks/native/data/etc/permissions/com.broadcom.bt.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.broadcom.bt.xml \
   frameworks/native/data/etc/permissions/com.broadcom.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.broadcom.nfc.xml \
   frameworks/native/data/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.google.android.maps.xml \
   frameworks/native/data/etc/permissions/com.google.android.media.effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.google.android.media.effects.xml \
   frameworks/native/data/etc/permissions/com.google.widevine.software.drm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.google.widevine.software.drm.xml \
   frameworks/native/data/etc/permissions/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
   frameworks/native/data/etc/permissions/com.samsung.device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.samsung.device.xml \
   frameworks/native/data/etc/permissions/com.sec.android.app.minimode.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.sec.android.app.minimode.xml \
   frameworks/native/data/etc/permissions/com.sec.android.visualeffect.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.sec.android.visualeffect.xml \
   frameworks/native/data/etc/permissions/com.sec.feature.findo.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.sec.feature.findo.xml \
   frameworks/native/data/etc/permissions/com.sec.feature.minimode.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.sec.feature.minimode.xml \
   frameworks/native/data/etc/permissions/com.sec.feature.samsunglinkplatform.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.sec.feature.samsunglinkplatform.xml \
   frameworks/native/data/etc/permissions/com.sec.smartcard.auth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.sec.smartcard.auth.xml \
   frameworks/native/data/etc/permissions/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
   frameworks/native/data/etc/permissions/mmappframeworklib_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/mmappframeworklib_library.xml \
   frameworks/native/data/etc/permissions/mycontainerbadge.png:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/mycontainerbadge.png \
   frameworks/native/data/etc/permissions/org.simalliance.openmobileapi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/org.simalliance.openmobileapi.xml \
   frameworks/native/data/etc/permissions/platform.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/platform.xml \
   frameworks/native/data/etc/permissions/samsung_library_music_permission.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/samsung_library_music_permission.xml \
   frameworks/native/data/etc/permissions/sec_edm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sec_edm.xml \
   frameworks/native/data/etc/permissions/sec_feature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sec_feature.xml \
   frameworks/native/data/etc/permissions/sec_hardware_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sec_hardware_library.xml \
   frameworks/native/data/etc/permissions/sec_mdm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sec_mdm.xml \
   frameworks/native/data/etc/permissions/sec_platform_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sec_platform_library.xml \
   frameworks/native/data/etc/permissions/seccamera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/seccamera.xml \
   frameworks/native/data/etc/permissions/secimaging.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/secimaging.xml \
   frameworks/native/data/etc/permissions/secmediarecorder.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/secmediarecorder.xml \
   frameworks/native/data/etc/permissions/secvision.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/secvision.xml \
   frameworks/native/data/etc/permissions/slinkntsmanager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/slinkntsmanager.xml \
   frameworks/native/data/etc/permissions/smartfaceservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/smartfaceservice.xml \
   frameworks/native/data/etc/permissions/smat_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/smat_library.xml \
   frameworks/native/data/etc/permissions/svi_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/svi_library.xml \
   frameworks/native/data/etc/permissions/sws.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sws.xml \
   frameworks/native/data/etc/permissions/touchwiz.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/touchwiz.xml \
   frameworks/native/data/etc/permissions/usb_print4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/usb_print4.xml \
   frameworks/native/data/etc/permissions/videowall_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/videowall_library.xml \
   frameworks/native/data/etc/permissions/vtmanager_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/vtmanager_library.xml
# ===




# IHM
# egl
 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/egl/egl.cfg:$(TARGET_COPY_OUT_VENDOR)/lib/egl/egl.cfg

# Video Telepony
 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/videotelephony/MaskInfo_VT_ANIMATION_2014.conf:$(TARGET_COPY_OUT_VENDOR)/etc/videotelephony/MaskInfo_VT_ANIMATION_2014.conf


$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)


# Unknown inside vendor firmware
PRODUCT_PACKAGES += \
   fimc_is_fw2 \
   mfc_fw \
   RS_M7MU \
   setfile_6b2 \
   setfile_imx175

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/firmware/fimc_is_fw2.bin:$(TARGET_COPY_OUT_VENDOR)/vendor/firmware/fimc_is_fw2.bin \
   $(LOCAL_PATH)/configs/firmware/mfc_fw.bin:$(TARGET_COPY_OUT_VENDOR)/vendor/firmware/mfc_fw.bin \
   $(LOCAL_PATH)/configs/firmware/RS_M7MU.bin:$(TARGET_COPY_OUT_VENDOR)/vendor/firmware/RS_M7MU.bin \
   $(LOCAL_PATH)/configs/firmware/setfile_6b2.bin:$(TARGET_COPY_OUT_VENDOR)/vendor/firmware/setfile_6b2.bin \
   $(LOCAL_PATH)/configs/firmware/setfile_imx175.bin:$(TARGET_COPY_OUT_VENDOR)/vendor/firmware/setfile_imx175.bin

# Unknown inside vendor lib
 PRODUCT_PACKAGES += \
   liblvverx_3.21.13 \
   liblvvetx_3.21.13 \
   libmalicore \
   liboemcrypto \
   libRSDriverArm

 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/lib/libmalicore.bc:$(TARGET_COPY_OUT_VENDOR)/vendor/lib/libmalicore.bc

# Unknown inside vendor media
 PRODUCT_PACKAGES += \
   LMspeed_508 \
   PFFprec_600

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/media/LMspeed_508.emd:$(TARGET_COPY_OUT_VENDOR)/vendor/media/LMspeed_508.emd \
   $(LOCAL_PATH)/configs/media/PFFprec_600.emd:$(TARGET_COPY_OUT_VENDOR)/vendor/media/PFFprec_600.emd


# System.prop
TARGET_SYSTEM_PROP += device/samsung/m2alte/system.prop

# Properties OS universal 7580 common
-include $(LOCAL_PATH)/system.prop

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/m2alte/m2alte-vendor.mk)

#kernel
 PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/kernel:kernel

