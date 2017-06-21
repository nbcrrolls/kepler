PKGROOT		= /opt/keplerwf
NAME    	= keplerwf
VERSION 	= 1.1
RELEASE 	= 0
XMLFILE = AmberGPUMDSimulation_1.1.xml  
PARAMFILE = params  
RUNFILE = runwf.sh  
SETUPFILE = setupwf.sh  
INPUTDIR = TestInput 

RPM.EXTRAS  = %define __os_install_post /usr/lib/rpm/brp-compress \\n%define __strip /bin/false
