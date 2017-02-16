# $Id: Makefile,v Exp $
#
# @Copyright@
# @Copyright@
#
#

REDHAT.ROOT = $(PWD)/../../
MAKE.iscontrib  = 1

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

RNAME = jre1.8.0_121
RVERSION = 1.8.0_121
RRELEASE = fcs
	
rpm:: build
	-cp jre-8u121-linux-x64.rpm $(REDHAT.RPMS)/$(ARCH)/$(RNAME)-$(RVERSION)-$(RRELEASE).$(ARCH).rpm

build:
	mkdir -p $(REDHAT.RPMS)/$(ARCH)/
