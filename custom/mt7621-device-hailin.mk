#
# Hailin HL7621-S
# 追加到 target/linux/ramips/image/mt7621.mk 末尾使用
#
# 说明：
#  - DEVICE 名 hailin_hl7621-s 决定 DTS 文件名必须为 mt7621_hailin_hl7621-s.dts
#  - kmod-ath9k：WPEA-121NW（AR9382）的驱动
#  - kmod-usb3：MT7621 片内 xhci-mtk，USB3.0/USB2.0 口 + 4G 模块共用
#  - kmod-mmc-mtk：TF 卡座
#  - 4G 模块（QMI/MBIM 拨号）相关 kmod，若你的模块是其它拨号协议自行增减
#
define Device/hailin_hl7621-s
  $(Device/dsa-migration)
  $(Device/uimage-lzma-loader)
  IMAGE_SIZE := 16064k
  DEVICE_VENDOR := Hailin
  DEVICE_MODEL := HL7621-S
  DEVICE_PACKAGES := kmod-ath9k kmod-usb3 kmod-mmc-mtk \
	kmod-usb-net-qmi-wwan kmod-usb-net-cdc-mbim \
	kmod-usb-serial kmod-usb-serial-option -uboot-envtools
  SUPPORTED_DEVICES := hailin,hl7621-s
endef
TARGET_DEVICES += hailin_hl7621-s
