#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=mipsel
BOARD:=pistachio
BOARDNAME:=MIPS pistachio
FEATURES:=audio fpu usb usbgadget squashfs targz nand ubifs
CPU_TYPE:=24kc
CPU_SUBTYPE:=24kf
MAINTAINER:=

KERNEL_PATCHVER:=4.4

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += \
	kmod-leds-gpio kmod-ledtrig-heartbeat \
	kmod-i2c-core kmod-serial-sc16is7xx \
	kmod-sound-pistachio-soc \
	uboot-envtools

$(eval $(call BuildTarget))
