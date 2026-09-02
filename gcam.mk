# Google Camera (GCam) for Pixel 9 family (caimito) — presigned Play build.
# base.apk + dynamic feature/asset splits, shipped verbatim to preserve the
# Google signature (Play can still update it) and every feature module.
# Device-bound: inherited from device/google/caimito/device-<codename>.mk.

gcam_src := vendor/google/caimito_gcam/proprietary/product/app/GoogleCamera
gcam_dst := $(TARGET_COPY_OUT_PRODUCT)/app/GoogleCamera

# The base APK is the GoogleCamera Soong module (Android.bp), which also overrides the AOSP
# Camera2 app; only the split APKs are copied next to it here.
PRODUCT_PACKAGES += \
    GoogleCamera

PRODUCT_COPY_FILES += \
    $(gcam_src)/split_all_in_feature_module_p24.apk:$(gcam_dst)/split_all_in_feature_module_p24.apk \
    $(gcam_src)/split_camera_vkp_asset_module.apk:$(gcam_dst)/split_camera_vkp_asset_module.apk \
    $(gcam_src)/split_deeprestore_split_module_p24.apk:$(gcam_dst)/split_deeprestore_split_module_p24.apk \
    $(gcam_src)/split_focus_stack_feature_module_p24.apk:$(gcam_dst)/split_focus_stack_feature_module_p24.apk \
    $(gcam_src)/split_geo_cal_split_module_caiman.apk:$(gcam_dst)/split_geo_cal_split_module_caiman.apk \
    $(gcam_src)/split_hdrplus_asset_module_p24.apk:$(gcam_dst)/split_hdrplus_asset_module_p24.apk \
    $(gcam_src)/split_hotshot_split_module.apk:$(gcam_dst)/split_hotshot_split_module.apk \
    $(gcam_src)/split_imax_split_module.apk:$(gcam_dst)/split_imax_split_module.apk \
    $(gcam_src)/split_l2l_assets_p24_module.apk:$(gcam_dst)/split_l2l_assets_p24_module.apk \
    $(gcam_src)/split_lightcycle_asset_module.apk:$(gcam_dst)/split_lightcycle_asset_module.apk \
    $(gcam_src)/split_motion_blur_asset_module_p24.apk:$(gcam_dst)/split_motion_blur_asset_module_p24.apk \
    $(gcam_src)/split_portrait_asset_module.apk:$(gcam_dst)/split_portrait_asset_module.apk \
    $(gcam_src)/split_portrait_asset_module_p24.apk:$(gcam_dst)/split_portrait_asset_module_p24.apk \
    $(gcam_src)/split_roi_tracking_asset_module_p24.apk:$(gcam_dst)/split_roi_tracking_asset_module_p24.apk \
    $(gcam_src)/split_smartcapture_split_module.apk:$(gcam_dst)/split_smartcapture_split_module.apk \
    $(gcam_src)/split_smartzoom_split_module.apk:$(gcam_dst)/split_smartzoom_split_module.apk \
    $(gcam_src)/split_startup_jni_split_module.apk:$(gcam_dst)/split_startup_jni_split_module.apk
