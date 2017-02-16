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
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	mv  $(DISTNAME) $(ROOT)/$(PKGROOT)/
	ln -s   $(PKGROOT)/$(DISTNAME)  $(ROOT)/$(PKGROOT)/$(NAME) 

clean::

