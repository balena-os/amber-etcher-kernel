FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://usb"

do_install_append() {
    install -m 0755 ${WORKDIR}/usb ${D}/init.d/90-usb
}

PACKAGES_append += "initramfs-module-usb"

SUMMARY_initramfs-module-usb = "expose internal media as storage device over USB"
RDEPENDS_initramfs-module-usb = " \
	${PN}-base \
	kernel-module-g-acm-ms \
	kernel-module-g-mass-storage \
	kernel-module-dwc2"
FILES_initramfs-module-usb = "/init.d/90-usb"

RRECOMMENDS_${PN}-base = ""
