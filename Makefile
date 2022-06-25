ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

ifeq ($(BINDIR),)
	BINDIR := /bin
endif

CMD=ENTER_CMD_HERE

make:

install:
	mkdir -p $(DESTDIR)$(PREFIX)$(BINDIR)/
	install -m 755 $(CMD) $(DESTDIR)$(PREFIX)$(BINDIR)/

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)$(BINDIR)/$(CMD)

.PHONY: install uninstall make
