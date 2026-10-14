# Hailin HL7621-S
# 追加到 target/linux/ramips/image/mt7621.mk 末尾使用
define Device/hailin_hl7621s
  DEVICE_VENDOR := Hailin
  DEVICE_MODEL := HL7621_S
  DEVICE_DTS := mt7621_hailin_hl7621s
  KERNEL := kernel-bin | lzma | uImage-lzma
  KERNEL_LOADADDR := 0x80001000
  IMAGE_SIZE := 32768k
  IMAGES := factory.bin sysupgrade.bin initramfs-kernel.bin
  IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs
  DEVICE_PACKAGES := kmod-ath9k kmod-usb3 kmod-mmc-mtk \
	kmod-usb-net-qmi-wwan kmod-usb-net-cdc-mbim \
	kmod-usb-serial kmod-usb-serial-option uboot-envtools
endef
TARGET_DEVICES += hailin_hl7621s
