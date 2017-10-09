FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://custom.cfg"

CMDLINE = "console=serial0,115200 shell=after:usb"
KERNEL_DEVICETREE = "bcm2710-rpi-3-b.dtb overlays/dwc2.dtbo"
