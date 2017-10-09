do_deploy_append() {
	echo "\n# Use DWC2 in peripheral mode" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
	echo "dtoverlay=dwc2,dr_mode=peripheral" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
}
