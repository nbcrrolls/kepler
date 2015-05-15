PKGROOT		= /opt
NAME    	= kepler
VERSION 	= 2.4
RELEASE 	= 0
TARBALL_POSTFIX	= tar.gz

SOURCE_PkG      = $(NAME)-$(VERSION).$(TARBALL_POSTFIX)

RPM.EXTRAS  = %define __os_install_post /usr/lib/rpm/brp-compress \\n%define __strip /bin/false
