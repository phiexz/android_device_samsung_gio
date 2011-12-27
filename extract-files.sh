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

rm -rf ../../../vendor/$MANUFACTURER/$DEVICE
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX

# proprietary
adb pull /system/lib/hw/gps.gio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/gpsd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libseccameraadaptor.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libarccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libCaMotion.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcaps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libPanoraMax1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libActionShot.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libPlusMe.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/BCM2049C0_003.001.031.0088.0094.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libs3cjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

# omx libs
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/OMX

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
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

PRODUCT_COPY_FILES += \
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:obj/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera_client.so:obj/lib/libcamera_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so
    
PRODUCT_COPY_FILES += \
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.msm7k.so:system/lib/hw/gps.gio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gpsd:system/bin/gpsd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsec-ril.so:system/lib/libsec-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcameraservice.so:system/lib/libcameraservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera_client.so:system/lib/libcamera_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libarccamera.so:system/lib/libarccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libCaMotion.so:system/lib/libCaMotion.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcaps.so:system/lib/libcaps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPanoraMax1.so:system/lib/libPanoraMax1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libActionShot.so:system/lib/libActionShot.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPlusMe.so:system/lib/libPlusMe.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/BCM2049C0_003.001.031.0088.0094.hcd:system/etc/firmware/BCM2049C0_003.001.031.0088.0094.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libs3cjpeg.so:system/lib/libs3cjpeg.so

PRODUCT_COPY_FILES += \
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/OMX/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

EOF

./setup-makefiles.sh
