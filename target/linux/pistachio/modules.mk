#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/sound-pistachio-soc
  TITLE:=SoC Audio support for the Pistachio SOC
  DEPENDS:=@TARGET_pistachio +kmod-sound-soc-core +kmod-serial-sc16is7xx
  KCONFIG:= \
	CONFIG_SND_SOC_IMG=y \
	CONFIG_SND_SOC_IMG_PISTACHIO=y \
	CONFIG_SND_SOC_IMG_PISTACHIO_INTERNAL_DAC=y \
	CONFIG_SND_SOC_IMG_I2S_IN \
	CONFIG_SND_SOC_IMG_I2S_OUT \
	CONFIG_SND_SOC_IMG_PARALLEL_OUT \
	CONFIG_SND_SOC_IMG_SPDIF_IN \
	CONFIG_SND_SOC_IMG_SPDIF_OUT \
	CONFIG_SND_SOC_IMG_PISTACHIO_EVENT_TIMER=y \
	CONFIG_SND_SOC_IMG_PISTACHIO_EVENT_TIMER_ATU=y \
	CONFIG_SND_SOC_IMG_PISTACHIO_EVENT_TIMER_LOCAL=n
  FILES:= \
	$(LINUX_DIR)/sound/soc/img/img-i2s-in.ko \
	$(LINUX_DIR)/sound/soc/img/img-i2s-out.ko \
	$(LINUX_DIR)/sound/soc/img/img-parallel-out.ko \
	$(LINUX_DIR)/sound/soc/img/img-spdif-in.ko \
	$(LINUX_DIR)/sound/soc/img/img-spdif-out.ko \
	$(LINUX_DIR)/sound/soc/img/pistachio.ko \
	$(LINUX_DIR)/sound/soc/img/pistachio-internal-dac.ko \
	$(LINUX_DIR)/sound/soc/img/pistachio-event-timer.ko \
	$(LINUX_DIR)/sound/soc/img/pistachio-event-timer-atu.ko
  AUTOLOAD:=$(call AutoLoad,68,img-i2s-in img-i2s-out img-parallel-out img-spdif-in img-spdif-out pistachio-internal-dac pistachio-event-timer-atu pistachio)
  $(call AddDepends/sound)
endef

$(eval $(call KernelPackage,sound-pistachio-soc))

define KernelPackage/sound-pistachio-soc/description
 SoC Audio support for the Pistachio SOC
endef
