# Boot Animation
scr_resolution := 1080x1920

ifneq ($(filter berkeley,$(TARGET_PRODUCT)),)
    scr_resolution := 1080x2160
endif

ifneq ($(wildcard vendor/themes/bootanimation/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/themes/bootanimation/$(scr_resolution).zip:system/media/bootanimation.zip
endif
