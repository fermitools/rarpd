CC ?= gcc
CFLAGS ?= -O2 -Wall -g $(DEFINES)

OBJ=rarpd.o #ethernet.o

PREFIX ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man

all: rarpd

rarpd: $(OBJ)

clean:
	rm -f $(OBJ) rarpd

install:
	install -d $(DESTDIR)$(PREFIX)/sbin
	install -m 0755 rarpd $(DESTDIR)$(PREFIX)/sbin/
	if [ -r rarpd.8 ]; then \
		install -d $(DESTDIR)$(MANPREFIX)/man8; \
		install -m 0644 rarpd.8 $(DESTDIR)$(MANPREFIX)/man8/; \
	fi
