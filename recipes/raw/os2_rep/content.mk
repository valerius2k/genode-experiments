content: os2_rep.iso os2_rep.vbox

ISO_URL = ftp://osfree.org/upload/vbox/vm/os2_rep.iso

os2_rep.iso:
	wget $(ISO_URL) -O $@

os2_rep.vbox:
	cp $(REP_DIR)/recipes/raw/os2_rep/$@ $@
