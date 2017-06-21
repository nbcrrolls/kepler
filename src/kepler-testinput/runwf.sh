#!/bin/bash

module load R

PARAMFILE=~/params
WFFILE=~/AmberGPUMDSimulation_1.1.xml

/opt/kepler/kepler.sh -runwf -nogui -paramFile $PARAMFILE $WFFILE &

