# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release Name
PRODUCT_RELEASE_NAME := DHD

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

# Inherit CFX stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from glacier device
$(call inherit-product, device/htc/glacier/device.mk)

PRODUCT_NAME := cfx_glacier
PRODUCT_DEVICE := glacier
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Mytouch 4G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_glacier BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="4.2.2 Built on CFX by THEindian"
