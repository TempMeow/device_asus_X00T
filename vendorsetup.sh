git clone --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b codelinaro-hmp kernel/asus/sdm660

rm -rf hardware/qcom-caf/msm8998/audio
git clone https://github.com/inexdroid/hardware_qcom-caf_msm8998_audio hardware/qcom-caf/msm8998/audio

rm -rf hardware/qcom-caf/msm8998/display
git clone https://github.com/inexdroid/hardware_qcom-caf_msm8998_display hardware/qcom-caf/msm8998/display

rm -rf hardware/qcom-caf/msm8998/media
git clone https://github.com/inexdroid/hardware_qcom-caf_msm8998_media hardware/qcom-caf/msm8998/media
