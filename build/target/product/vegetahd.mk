
#
# Copyright (C) 2013 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL hammerhead devices, and
# are also specific to hammerhead devices
#
# Everything in this directory will become public

DOLBY_DAP:=true
DOLBY_DAP_OPENSLES:=true
DOLBY_UDC:=true
DOLBY_UDC_STREAMING_HLS:=true
DOLBY_MONO_SPEAKER:=true

ifdef DOLBY_DAP
    PRODUCT_PACKAGES += \
        Ds \
        dolby_ds
    ifdef DOLBY_DAP_NOCONSUMERAPP
    else
        PRODUCT_PACKAGES += \
            DsUI
    endif
    ifdef DOLBY_DAP_OPENSLES
        PRODUCT_PACKAGES += \
            libdseffect
    else ifdef DOLBY_DAP_DSP
        PRODUCT_PACKAGES += \
            libds_jni \
            libds_native \
            libalsa-intf
    endif
endif #DOLBY_DAP
ifdef DOLBY_UDC
    PRODUCT_PACKAGES += \
        libstagefright_soft_ddpdec
endif #DOLBY_UDC

PRODUCT_PACKAGES := \
#    FMRadio
#    MyTube \
#    VideoPlayer


$(call inherit-product, $(SRC_TARGET_DIR)/product/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

#for customization
$(call inherit-product, vendor/star_tic/common/common/vendor-blobs.mk)
$(call inherit-product, vendor/star_tic/common/$(CUST)/vendor-blobs.mk)
$(call inherit-product, vendor/star_tic/$(TARGET_PRODUCT)/$(CUST)/vendor-blobs.mk)

# Overrides
PRODUCT_BRAND  := alps
PRODUCT_NAME   := $(TARGET_PRODUCT)
PRODUCT_DEVICE := $(TARGET_PRODUCT)

# For GMS - Not needed for Ubuntu Touch
#include $(TOPDIR)vendor/google/products/gms.mk

# Dolby
PRODUCT_COPY_FILES += vendor/star_tic/vegetahd/ds1-default.xml:system/etc/ds1-default.xml
