UNITDIR ?= /usr/lib/systemd/system

all:
	true

install:
	mkdir -p $(DESTDIR)$(UNITDIR)
	cp qubes-core.service $(DESTDIR)$(UNITDIR)
	cp qubes-vm@.service $(DESTDIR)$(UNITDIR)
	cp qubes-qmemman.service $(DESTDIR)$(UNITDIR)
	cp qubes-qmemman.socket $(DESTDIR)$(UNITDIR)
	cp qubesd.service $(DESTDIR)$(UNITDIR)
	cp qubesd.socket $(DESTDIR)$(UNITDIR)
	cp qubes-db@.socket $(DESTDIR)$(UNITDIR)
	cp qubes-db@.service $(DESTDIR)$(UNITDIR)
	cp qubes-qrexec@.socket $(DESTDIR)$(UNITDIR)
	cp qubes-qrexec@.service $(DESTDIR)$(UNITDIR)
	cp qubes-qube@.service $(DESTDIR)$(UNITDIR)
	cp qubes-guid.service $(DESTDIR)$(UNITDIR)
	cp qubes-guid@.service $(DESTDIR)$(UNITDIR)
	cp qubes-session.target $(DESTDIR)$(UNITDIR)
	mkdir -p $(DESTDIR)/usr/lib/systemd/user/graphical-session.target.requires
	cp bind-qubes-session.service $(DESTDIR)/usr/lib/systemd/user
	ln -s $(DESTDIR)/usr/lib/systemd/user/bind-qubes-session.service $(DESTDIR)/usr/lib/systemd/user/graphical-session.target.requires/
	install -d $(DESTDIR)$(UNITDIR)/lvm2-pvscan@.service.d
	install -m 0644 lvm2-pvscan@.service.d_30_qubes.conf \
		$(DESTDIR)$(UNITDIR)/lvm2-pvscan@.service.d/30_qubes.conf
