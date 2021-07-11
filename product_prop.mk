#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Adb
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
     persist.sys.usb.config=mtp,adb \
     ro.adb.secure=0 \
     ro.secure=0 \
     ro.debuggable=1
endif

# Dex2oat
PRODUCT_PRODUCT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true

# Media
PRODUCT_PRODUCT_PROPERTIES += \
    debug.stagefright.omx_default_rank.sw-audio=16

# WFD
PRODUCT_PRODUCT_PROPERTIES += \
    persist.debug.wfd.enable=0

#Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Seamless transfer
PRODUCT_PRODUCT_PROPERTIES += \
    sys.fflag.override.settings_seamless_transfer=true

# Blur
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    persist.sys.sf.disable_blurs=0 \
    ro.sf.blurs_are_expensive=1
