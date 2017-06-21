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
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	$(INSTALL) -m 644 $(XMLFILE) $(PARAMFILE) $(RUNFILE) $(ROOT)/$(PKGROOT)
	$(INSTALL) -m 755 $(SETUPFILE) $(ROOT)/$(PKGROOT)
	cp -R $(INPUTDIR) $(ROOT)/$(PKGROOT)

clean::
