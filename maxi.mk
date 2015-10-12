# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit some common MaxiCM stuff.
$(call inherit-product, vendor/maxi/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/jagnm/full_jagnm.mk)

# Enhanced NFC
$(call inherit-product, vendor/maxi/config/nfc_enhanced.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := jagnm
PRODUCT_RELEASE_NAME := LG D722P
PRODUCT_NAME := maxi_jagnm
PRODUCT_BRAND := LG
PRODUCT_MODEL := D722P
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D722P TARGET_DEVICE=jagnm
