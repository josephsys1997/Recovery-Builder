#!/bin/bash env

# about the custom recovery
export NAME="twrp" # supported: pbrp, shrp, twrp
export MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp" # the link of manifest
export BRANCH="twrp-11" # the branch of manifest

# about your device
export DEVICE="Infinix-X697" # codename used in device tree
export DT_LINK="https://github.com/twrpdtgen/android_device_infinix_Infinix-X697" # device tree link
export DT_BRANCH="vnd_x697_h812-user-11-RP1A.200720.011-460220-release-keys" # device tree branch
export VENDOR="infinix" # device manufacturer or vendor
export TARGET="bootimage" # build method: recoveryimage, bootimage, vendorboot
export TYPE="twrp" # recovery type: omni, twrp, something else

# you dont need to edit these
export SYM="_"
