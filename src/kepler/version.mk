PKGROOT		= /opt
NAME    	= kepler
VERSION 	= 1.2
DISTNAME        = biokepler-$(VERSION)
RELEASE 	= 0
TARBALL_POSTFIX	= tar.gz

SOURCE_PKG      = biokepler-$(VERSION).$(TARBALL_POSTFIX)

RPM.EXTRAS  = %define __os_install_post /usr/lib/rpm/brp-compress \\n%define __strip /bin/false
