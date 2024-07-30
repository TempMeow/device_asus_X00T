git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf hardware/qcom-caf/msm8998/audio
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_audio hardware/qcom-caf/msm8998/audio

rm -rf hardware/qcom-caf/msm8998/display
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_display hardware/qcom-caf/msm8998/display

rm -rf hardware/qcom-caf/msm8998/media
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_media hardware/qcom-caf/msm8998/media

git clone --depth=1 https://github.com/Tiktodz/vendor -b everest kntl && cp -R kntl/* vendor/ && rm -rf kntl

export TZ=Asia/Jakarta
