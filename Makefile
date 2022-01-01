SHELL=/bin/bash
MAKE=make --no-print-directory

install-portage:
	ln -fs -n $(realpath gentoo/portage) /etc/portage

uninstall-portage:
	[[ -L /etc/portage ]] && rm /etc/portage || exit 0

eselect-profile:
	eselect profile set $$(cat gentoo/portage/readme.profile)

.PHONY: install-portage uninstall-portage eselect-profile
