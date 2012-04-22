# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration for pecan.
$(call inherit-product, device/lge/p350/p350.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full_no_themes.mk)

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_p350
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p350
PRODUCT_MODEL := LG-P350
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_p350 BUILD_ID=GRK39F BUILD_FINGERPRINT=LGE/pecan/pecan/pecan:2.3.7/GRK39F/20111018:user/test-keys PRIVATE_BUILD_DESC="pecan-user 2.3.7 GRK39F 20111018 test-keys"

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

#Prelink map
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-msm722x.map


# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi


# Release name and versioning
PRODUCT_RELEASE_NAME :=OptimusMe
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy specific prebuilt files
#
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip
