#
# SPDX-License-Identifier: Apache-2.0
#
# Legacy OnePlus Dolby HAL stack (DAX 3.6 "v3_6" + "sp" media), imported from
# the former vendor/lunaris/dolby repo. NOT part of the default build: it is
# pulled in only when TARGET_USES_LUNARIS_DOLBY_HAL := true
# (see dolby/hal/switch.mk in the device tree).
#

DOLBY_VENDOR_PATH := vendor/xiaomi/sm8850-common/dolby

PRODUCT_SOONG_NAMESPACES += \
    $(DOLBY_VENDOR_PATH)

# DAX default config + init scripts for the ODM HAL services
PRODUCT_COPY_FILES += \
    $(DOLBY_VENDOR_PATH)/proprietary/odm/etc/dolby/multimedia_dolby_dax_default.xml:$(TARGET_COPY_OUT_ODM)/etc/dolby/multimedia_dolby_dax_default.xml \
    $(DOLBY_VENDOR_PATH)/proprietary/odm/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_ODM)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(DOLBY_VENDOR_PATH)/proprietary/odm/etc/init/vendor.dolby_sp.hardware.dmssp@2.0-service.rc:$(TARGET_COPY_OUT_ODM)/etc/init/vendor.dolby_sp.hardware.dmssp@2.0-service.rc \
    $(DOLBY_VENDOR_PATH)/proprietary/odm/etc/init/vendor.dolby_v3_6.hardware.dms360@2.0-service.rc:$(TARGET_COPY_OUT_ODM)/etc/init/vendor.dolby_v3_6.hardware.dms360@2.0-service.rc

# NOTE: not installed on this arm64-only platform (32-bit only blobs):
#   libhwdap_v3_6, libswdap_v3_6 (audio effects), libstagefright_soft_ddpdec
# The blobs stay in proprietary/odm/lib for reference.
PRODUCT_PACKAGES += \
    init.dolby.rc \
    dolbycodec_shim \
    libdapparamstorage_v3_6 \
    libdeccfg_v3_6 \
    libdlbdsservice_v3_6 \
    vendor.dolby_v3_6.hardware.dms360@2.0 \
    vendor.dolby_v3_6.hardware.dms360@2.0-impl \
    vendor.dolby_v3_6.hardware.dms360@2.0-service \
    libcodec2_hidl@1.0_sp \
    libcodec2_hidl_plugin_sp \
    libcodec2_soft_ac4dec_sp \
    libcodec2_soft_common_sp \
    libcodec2_soft_ddpdec_sp \
    libcodec2_store_dolby_sp \
    libcodec2_vndk_sp \
    libdapparamstorage_sp \
    libdeccfg_sp \
    libdlbdsservice_sp \
    libui_sp \
    vendor.dolby_sp.hardware.dmssp@2.0 \
    vendor.dolby_sp.hardware.dmssp@2.0-impl \
    vendor.dolby_sp.hardware.dmssp@2.0-service \
    vendor.dolby_sp.media.c2@1.0-service \
    manifest_dax_dolby_v3_6.xml \
    vendor.dolby.hardware.dms.xml
