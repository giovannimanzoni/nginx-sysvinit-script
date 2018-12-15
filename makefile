#!/bin/sh

SHELL = /bin/sh
.SUFFIXES:

DAEMONFRONT  := nginxfront
INITFRONT    := /etc/init.d/$(DAEMONFRONT)
DEFAULTFRONT := /etc/default/$(DAEMONFRONT)

DAEMONBACK  := nginxback
INITBACK    := /etc/init.d/$(DAEMONBACK)
DEFAULTBACK := /etc/default/$(DAEMONBACK)


installfront:
	install -D --mode=0644 --owner=root --group=root -- ./defaultsfront $(DEFAULTFRONT)
	install -D --mode=0755 --owner=root --group=root -- ./initfront $(INITFRONT)
	update-rc.d $(DAEMONFRONT) defaults

uninstallfront:
	update-rc.d -f $(DAEMONFRONT) remove
	rm --force -- $(INITFRONT) $(DEFAULTFRONT)

installback:
	install -D --mode=0644 --owner=root --group=root -- ./defaultsback $(DEFAULTBACK)
	install -D --mode=0755 --owner=root --group=root -- ./initback $(INITBACK)
	update-rc.d $(DAEMONBACK) defaults

uninstallback:
	update-rc.d -f $(DAEMONBACK) remove
	rm --force -- $(INITBACK) $(DEFAULTBACK)
