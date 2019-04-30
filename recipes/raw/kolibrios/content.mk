content: kolibrios.iso kolibrios.vbox

ISO_URL = http://builds.kolibrios.org/eng/latest-iso.7z

kolibrios.iso:
	wget $(ISO_URL)
	7z x latest-iso.7z
	mv kolibri.iso kolibrios.iso
	rm -rf latest-iso.7z

kolibrios.vbox:
	cp $(REP_DIR)/recipes/raw/kolibrios/$@ $@
