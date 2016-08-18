PREFIX = /usr

install: houyi 20-backlight.rules
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m0755 houyi $(DESTDIR)$(PREFIX)/bin/houyi
	mkdir -p $(DESTDIR)$(PREFIX)/lib/udev/rules.d
	install -m0644 20-backlight.rules $(DESTDIR)$(PREFIX)/lib/udev/rules.d/20-backlight.rules

README: houyi
	sh houyi -h > README
