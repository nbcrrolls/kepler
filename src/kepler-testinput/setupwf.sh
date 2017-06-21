#!/bin/bash

ACC=`whoami`

SETUPDIR=$HOME
TEMPLATEDIR=/opt/keplerwf
PARAMFILE=params
WFFILE=AmberGPUMDSimulation_1.1.xml
RUNFILE=runwf.sh
INPUTDIR=TestInput

if [ ! -f $SETUPDIR/$PARAMFILE ]; then
    /bin/cp $TEMPLATEDIR/$PARAMFILE $SETUPDIR
   sed -i "s/USER/$ACC/g" $SETUPDIR/$PARAMFILE 
fi

if [ ! -f $SETUPDIR/$WFFILE ]; then
    /bin/cp $TEMPLATEDIR/$WFFILE $SETUPDIR
fi

if [ ! -f $SETUPDIR/$RUNFILE ]; then
    /bin/cp $TEMPLATEDIR/$RUNFILE $SETUPDIR
    chmod +x $SETUPDIR/$RUNFILE
fi

if [ ! -d $SETUPDIR/$INPUTDIR ]; then
    /bin/cp -r $TEMPLATEDIR/$INPUTDIR $SETUPDIR
fi

