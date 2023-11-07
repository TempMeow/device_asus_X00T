#!/bin/bash
#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required
DEVICE=X00T
VENDOR=asus

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

LINEAGE_ROOT="${MY_DIR}"/../../..

HELPER="${LINEAGE_ROOT}/vendor/lineage/build/tools/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

SECTION=
KANG=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi

function blob_fixup() {
    case "${1}" in

    # Fix jar path
    product/etc/permissions/qti_fingerprint_interface.xml)
        sed -i 's|/system/framework/|/system/product/framework/|g' "${2}"
        ;;

    # Rename to fp service avoid conflicts
    vendor/etc/init/android.hardware.biometrics.fingerprint@2.1-service_asus.rc)
        sed -i 's|android.hardware.biometrics.fingerprint@2.1-service|android.hardware.biometrics.fingerprint@2.1-service_asus|g' "${2}"
        ;;

    # remove android.hidl.base dependency
    vendor/lib/hw/camera.sdm660.so)
        patchelf --remove-needed "android.hidl.base@1.0.so" "${2}"
        ;;

    # remove android.hidl.base dependency
    lib64/libfm-hci.so | lib64/libwfdnative.so | lib/libfm-hci.so | lib/libwfdnative.so)
        patchelf --remove-needed "android.hidl.base@1.0.so" "${2}"
        ;;

    esac
}

# Initialize the helper for device
setup_vendor "${DEVICE}" "${VENDOR}" "${LINEAGE_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" ${KANG} --section "${SECTION}"

"${MY_DIR}/setup-makefiles.sh"
