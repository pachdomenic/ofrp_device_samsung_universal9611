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
$(call inherit-product, device/samsung/universal9611/device.mk)

# Recovery Fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/gta4xl/rootdir/twrp.flags:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.flags

