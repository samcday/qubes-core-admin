STATEDIR ?= /var/run
LIBDIR ?= /usr/lib

all:
	true

tmpfiles-qubes.conf: tmpfiles-qubes.conf.in
	cat tmpfiles-qubes.conf.in | sed "s#@STATEDIR@#$(STATEDIR)#" > tmpfiles-qubes.conf
install: tmpfiles-qubes.conf
	mkdir -p $(DESTDIR)/etc/xen/scripts
	cp vif-route-qubes $(DESTDIR)/etc/xen/scripts
	cp block-snapshot $(DESTDIR)/etc/xen/scripts
	ln -s block-snapshot $(DESTDIR)/etc/xen/scripts/block-origin
	install -m 0644 -D tmpfiles-qubes.conf $(DESTDIR)$(LIBDIR)/tmpfiles.d/qubes.conf
	install -d $(DESTDIR)/etc/logrotate.d
	install -m 0644 logrotate-qubes \
		$(DESTDIR)/etc/logrotate.d/qubes
