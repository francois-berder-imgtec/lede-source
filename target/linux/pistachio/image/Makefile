#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

KERNEL_LOADADDR := 0x80400000

define Build/dtb-bin
	$(call Image/BuildDTB,$(DEVICE_DTS_DIR)/$(DEVICE_DTS).dts,$@.dtb)
endef

define Device/Default
	PROFILES := Default $$(DEVICE_NAME)
	FILESYSTEMS := squashfs
	DEVICE_DTS_DIR := ../dts
	KERNEL_DEPENDS = $$(wildcard $$(DEVICE_DTS_DIR)/$$(DEVICE_DTS).dts)
	KERNEL = dtb-bin | kernel-bin | gzip | fit gzip $$(KDIR_KERNEL_IMAGE).dtb
	KERNEL_SUFFIX := -kernel.itb
	KERNEL_INSTALL := 1
	KERNEL_IN_UBI := 1
	IMAGES := factory.ubi sysupgrade.tar
	IMAGE/factory.ubi := append-ubi
	IMAGE/sysupgrade.tar := sysupgrade-tar
endef

define Device/marduk
	DEVICE_DTS := pistachio/pistachio_marduk
	BLOCKSIZE := 256KiB
	PAGESIZE := 4KiB
	DEVICE_TITLE := Creator Ci40
	DEVICE_PACKAGES := \
		kmod-tpm-i2c-infineon kmod-random-tpm tpm-tools
endef

TARGET_DEVICES += marduk


$(eval $(call BuildImage))
