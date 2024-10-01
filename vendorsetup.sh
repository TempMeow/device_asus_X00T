rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/texascake/kernel_asus_sdm660 --single-branch kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace
rm -rf kernel/asus/sdm660/KernelSU/website
rm -rf kernel/asus/sdm660/KernelSU/scripts
rm -rf kernel/asus/sdm660/KernelSU/docs

rm -rf device/asus/X00T
git clone --depth=1 https://github.com/Tiktodz/device_asus_X00T device/asus/X00T

rm -rf hardware/qcom-caf/msm8998/audio
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_audio hardware/qcom-caf/msm8998/audio

rm -rf hardware/qcom-caf/msm8998/display
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_display hardware/qcom-caf/msm8998/display

rm -rf hardware/qcom-caf/msm8998/media
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_media hardware/qcom-caf/msm8998/media

git clone --depth=1 https://github.com/Tiktodz/vendor -b everest kntl && cp -R kntl/* vendor/ && rm -rf kntl

rm -rf vendor/asus
git clone --depth=1 https://github.com/Tiktodz/vendor_asus vendor/asus

export TZ=Asia/Jakarta
