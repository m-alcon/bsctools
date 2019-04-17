#!/bin/bash

program=$1

echo "Setting and running app with EXTRAE"
export EXTRAE_HOME=/usr/local
export EXTRAE_CONFIG_FILE=extrae.xml
export OMP_NUM_THREADS=6
export LD_PRELOAD=${EXTRAE_HOME}/lib/libomptrace-3.6.1.so

./$program

export LD_PRELOAD=
mkdir -p traces
mv $program.prv traces/
mv $program.pcf traces/
mv $program.row traces/

echo "Finished"
