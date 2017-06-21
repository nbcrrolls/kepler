# $Id: Makefile,v Exp $
#
# @Copyright@
# @Copyright@
#
#

REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build:
	tar -xvzf $(SOURCE_PKG)
	cd patch-files && find . -type f | grep -v CVS | cpio -pduv ..
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	mv  $(DISTNAME) $(ROOT)/$(PKGROOT)/
	ln -s   $(PKGROOT)/$(DISTNAME)  $(ROOT)/$(PKGROOT)/$(NAME) 

clean::

