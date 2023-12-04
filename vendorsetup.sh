export SELINUX_IGNORE_NEVERALLOWS=true

#rm -rf kernel/asus/sdm660
git clone --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b codelinaro-hmp kernel/asus/sdm660

rm -rf hardware/qcom-caf/msm8998/audio
git clone https://github.com/lineageX00T/hardware_qcom-caf_msm8998_audio -b lineage-17.1 hardware/qcom-caf/msm8998/audio
