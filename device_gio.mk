# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS := device/samsung/gio/overlay

PRODUCT_PACKAGES += \
    librs_jni \
    libOmxCore \
    make_ext4fs \
    brcm_patchram_plus \
    sec_touchscreen.kcm \
    copybit.gio \
    lights.gio \
    gralloc.gio \
    gps.gio \
    setup_fs \
    FM \
    SamsungServiceMode \
    rzscontrol \
    bdaddr_read \
    dump_image \
    e2fsck \
    setup_fs \
    erase_image \
    flash_image \
    screencap \
    dexpreopt

# proprietary side of the device
$(call inherit-product-if-exists, vendor/samsung/gio/gio-vendor.mk)

DISABLE_DEXPREOPT := false

PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/abtfilt:system/bin/abtfilt \
    device/samsung/gio/prebuilt/memsicd:system/bin/memsicd \
    device/samsung/gio/prebuilt/qmuxd:system/bin/qmuxd \
    device/samsung/gio/prebuilt/wmiconfig:system/bin/wmiconfig \
    device/samsung/gio/prebuilt/02gio:system/etc/init.d/02gio \
    device/samsung/gio/prebuilt/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/gio/prebuilt/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    device/samsung/gio/prebuilt/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/samsung/gio/prebuilt/sec_key.kl:system/usr/keylayout/sec_key.kl
  

# fstab
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/vold.fstab:system/etc/vold.fstab

# Init
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/init.gt-s5660.rc:root/init.gt-s5660.rc \
    device/samsung/gio/prebuilt/GIO.rle:root/GIO.rle \
    device/samsung/gio/prebuilt/ueventd.gt-s5660.rc:root/ueventd.gt-s5660.rc

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/samsung/gio/prebuilt/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# WLAN + BT
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/gio/prebuilt/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/gio/prebuilt/hostapd:system/bin/hostapd \
    device/samsung/gio/prebuilt/wlan_mac:system/bin/wlan_mac \
    device/samsung/gio/prebuilt/wlan_tool:system/bin/wlan_tool \
    device/samsung/gio/prebuilt/hostapd.conf:system/etc/wifi/hostapd.conf
    
# Hardware
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

#Kernel Modules
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/gio/prebuilt/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/gio/prebuilt/modules/sec_param.ko:root/lib/modules/sec_param.ko \
    device/samsung/gio/prebuilt/ar6000.ko:system/wifi/ar6000.ko \
    device/samsung/gio/prebuilt/cifs.ko:system/lib/modules/cifs.ko \
    device/samsung/gio/prebuilt/tun.ko:system/lib/modules/tun.ko \
    device/samsung/gio/prebuilt/zram.ko:system/lib/modules/zram.ko
    
#Kernel Modules for Recovery (RFS)
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/modules/recovery/fsr.ko:recovery/root/lib/modules/fsr.ko \
    device/samsung/gio/prebuilt/modules/recovery/fsr_stl.ko:recovery/root/lib/modules/fsr_stl.ko \
    device/samsung/gio/prebuilt/modules/recovery/rfs_fat.ko:recovery/root/lib/modules/rfs_fat.ko \
    device/samsung/gio/prebuilt/modules/recovery/rfs_glue.ko:recovery/root/lib/modules/rfs_glue.ko \
    device/samsung/gio/prebuilt/modules/recovery/sec_param.ko:recovery/root/lib/modules/sec_param.ko

#WiFi firmware
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/athtcmd_ram.bin:system/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin \
    device/samsung/gio/prebuilt/athwlan.bin.z77:system/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77 \
    device/samsung/gio/prebuilt/bdata.SD31.bin:system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin \
    device/samsung/gio/prebuilt/bdata.SD31.bin.04:system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.04 \
    device/samsung/gio/prebuilt/data.patch.bin:system/wifi/ath6k/AR6003/hw2.0/data.patch.bin \
    device/samsung/gio/prebuilt/otp.bin.z77:system/wifi/ath6k/AR6003/hw2.0/otp.bin.z77
    
#GPU firmware
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/samsung/gio/prebuilt/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw

#Media profile
PRODUCT_COPY_FILES += \
    device/samsung/gio/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0 \
    ro.telephony.ril_class=samsung \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60 \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=160 \
    hw.keyboards.0.devname=qwerty

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=48m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0
    
# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/gio/gio-vendor-blobs.mk)

PRODUCT_NAME := gio
PRODUCT_DEVICE := gio
PRODUCT_MODEL := GT-S5660
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
