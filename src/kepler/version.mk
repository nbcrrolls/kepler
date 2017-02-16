PKGROOT		= /opt
NAME    	= kepler
VERSION 	= 2.5
DISTNAME        = Kepler-$(VERSION)
RELEASE 	= 0
TARBALL_POSTFIX	= tar.gz

SOURCE_PKG      = Kepler-$(VERSION)-linux.$(TARBALL_POSTFIX)

RPM.EXTRAS  = %define __os_install_post /usr/lib/rpm/brp-compress \\n%define __strip /bin/false
