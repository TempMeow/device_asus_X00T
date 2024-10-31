rm -rf kernel/asus/sdm660
git clone --depth=1 https://github.com/Tiktodz/android_kernel_asus_sdm660 -b 4.4 kernel/asus/sdm660

rm -rf device/asus/X00T
git clone --depth=1 https://github.com/Tiktodz/device_asus_X00T -b tiramisu device/asus/X00T

rm -rf hardware/qcom-caf/msm8998/audio
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_audio hardware/qcom-caf/msm8998/audio

rm -rf hardware/qcom-caf/msm8998/display
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_display hardware/qcom-caf/msm8998/display

rm -rf hardware/qcom-caf/msm8998/media
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_media hardware/qcom-caf/msm8998/media

rm -rf vendor/lineage-priv/keys
git clone https://github.com/sotodrom/keys vendor/lineage-priv/keys

rm -rf vendor/asus
git clone --depth=1 https://github.com/Tiktodz/vendor_asus vendor/asus

export TZ=Asia/Jakarta
