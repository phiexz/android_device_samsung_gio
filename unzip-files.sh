#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=gio
MANUFACTURER=samsung

rm -rf ./vendor/$MANUFACTURER/$DEVICE
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/ril
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/libaudio
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/bluetooth
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/gps
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/sensor
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu

# ril
mv ./${DEVICE}_update/system/lib/libril.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/ril
mv ./${DEVICE}_update/system/lib/libsecril-client.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/ril
mv ./${DEVICE}_update/system/lib/libsec-ril.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/ril
mv ./${DEVICE}_update/system/lib/libdiag.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/ril
mv ./${DEVICE}_update/system/bin/qmuxd ./vendor/$MANUFACTURER/$DEVICE/proprietary/ril
mv ./${DEVICE}_update/system/bin/rild ./vendor/$MANUFACTURER/$DEVICE/proprietary/ril

# omx libs
mv ./${DEVICE}_update/system/lib/libmm-adspsvc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxAacDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxAacEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxAdpcmDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxAmrDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxAmrEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxAmrRtpDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxAmrwbDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxEvrcEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxEvrcHwDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxH264Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxMp3Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxMpeg4Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxOn2Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxQcelp13Enc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxQcelpHwDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxVidEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxWmaDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libOmxWmvDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx

# omx shared libs
mv ./${DEVICE}_update/system/lib/libomx_aacdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libomx_amrdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libomx_amrenc_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libomx_avcdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libomx_m4vdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libomx_mp3dec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx
mv ./${DEVICE}_update/system/lib/libomx_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/omx

# camera
mv ./${DEVICE}_update/system/lib/liboemcamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libmmjpeg.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libmmipl.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libs3cjpeg.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libActionShot.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libarccamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libCaMotion.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libcaps.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libPanoraMax1.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libPlusMe.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libseccamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libseccameraadaptor.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libcamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libcamera_client.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera
mv ./${DEVICE}_update/system/lib/libcameraservice.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera

# wifi
mv ./${DEVICE}_update/system/wifi/ar6000.ko ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77 ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.01 ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.02 ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.03 ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.04 ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/data.patch.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/wifi/ath6k/AR6003/hw2.0/otp.bin.z77 ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/bin/hostapd ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/bin/wlan_mac ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/bin/wlan_tool ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./${DEVICE}_update/system/bin/wmiconfig ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi

# bluetooth
mv ./${DEVICE}_update/system/bin/BCM2049C0_003.001.031.0088.0094.hcd ./vendor/$MANUFACTURER/$DEVICE/proprietary/bluetooth

# audio
mv ./${DEVICE}_update/system/lib/liba2dp.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libaudio
mv ./${DEVICE}_update/system/lib/libaudioeq.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/libaudio

# gps
mv ./${DEVICE}_update/system/lib/hw/gps.msm7k.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/gps
mv ./${DEVICE}_update/system/bin/gpsd ./vendor/$MANUFACTURER/$DEVICE/proprietary/gps

# sensor
mv ./${DEVICE}_update/system/lib/hw/sensors.default.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/sensor
mv ./${DEVICE}_update/system/bin/memsicd ./vendor/$MANUFACTURER/$DEVICE/proprietary/sensor

# GPU
mv ./${DEVICE}_update/system/lib/egl/libGLESv1_CM_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
mv ./${DEVICE}_update/system/lib/egl/libq3dtools_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
mv ./${DEVICE}_update/system/lib/egl/libEGL_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
mv ./${DEVICE}_update/system/lib/egl/libGLESv2_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
mv ./${DEVICE}_update/system/etc/firmware/yamato_pfp.fw ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
mv ./${DEVICE}_update/system/etc/firmware/yamato_pm4.fw ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
mv ./${DEVICE}_update/system/lib/libgsl.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
mv ./${DEVICE}_update/system/lib/egl/egl.cfg ./vendor/$MANUFACTURER/$DEVICE/proprietary/gpu
