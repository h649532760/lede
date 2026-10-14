define Device/hailin-hl7621-s
  DEVICE_VENDOR := Hailin
  DEVICE_MODEL := HL7621-S
  DEVICE_DTS := mt7621_hailin_hl7621-s
  # 重点：移除fit，老Ralink UBoot只认uImage lzma
  KERNEL := kernel-bin | lzma | uImage lzma
  KERNEL_LOADADDR := 0x80001000
  IMAGE_SIZE := 32768k
  IMAGES := factory.bin sysupgrade.bin
  IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs
endef
TARGET_DEVICES += hailin-hl7621-s
