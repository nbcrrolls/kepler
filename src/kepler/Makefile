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
	tar -xvzf kepler-2.4-linux.tar.gz
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	mv  $(NAME)-$(VERSION) $(ROOT)/$(PKGROOT)/
	ln -s   $(PKGROOT)/$(NAME)-$(VERSION)  $(ROOT)/$(PKGROOT)/$(NAME) 

clean::

