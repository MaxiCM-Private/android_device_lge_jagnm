# Release name
PRODUCT_RELEASE_NAME := D722

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/jagnm/full_jagnm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jagnm
PRODUCT_NAME := cm_jagnm
PRODUCT_BRAND := lge
PRODUCT_MODEL := D722
PRODUCT_MANUFACTURER := lge

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D722 TARGET_DEVICE=jagnm
