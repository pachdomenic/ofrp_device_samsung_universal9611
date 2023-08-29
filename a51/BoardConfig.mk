#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/universal9611
DEVICE := a51

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/$(DEVICE)/prebuilt/Image
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/$(DEVICE)/prebuilt/recovery_dtbo
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/$(DEVICE)/prebuilt/dtb

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/$(DEVICE)/rootdir/recovery.fstab

# TWRP flags
TW_MAX_BRIGHTNESS := 306
TW_Y_OFFSET := 98
TW_H_OFFSET := -98
TW_USE_SAMSUNG_HAPTICS := true

include $(DEVICE_PATH)/BoardConfig.mk
