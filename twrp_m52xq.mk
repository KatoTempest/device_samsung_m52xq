#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m52xq device
$(call inherit-product, device/samsung/m52xq/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/m52xq/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m52xq
PRODUCT_NAME := twrp_m52xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M526B
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := M52
