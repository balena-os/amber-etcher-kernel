FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://custom.cfg"

CMDLINE = "console=serial0,115200 shell=after:usb"
KERNEL_DEVICETREE = " \
	bcm2710-rpi-3-b.dtb \
	bcm2708-rpi-0-w.dtb \
	bcm2708-rpi-b.dtb \
	bcm2708-rpi-b-plus.dtb \
	bcm2709-rpi-2-b.dtb \
	bcm2710-rpi-3-b.dtb \
	bcm2708-rpi-cm.dtb \
	bcm2710-rpi-cm3.dtb \
	overlays/dwc2.dtbo"
