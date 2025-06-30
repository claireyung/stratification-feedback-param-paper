#!/bin/bash
#PBS -N process-ncra
#PBS -P x77
#PBS -q normalbw
#PBS -l walltime=2:00:00
#PBS -l mem=30GB
#PBS -l software=netcdf
#PBS -l ncpus=4
#PBS -l storage=gdata/v45+gdata/hh5+gdata/cj50+gdata/ik11+scratch/x77+gdata/x77+gdata/e14+gdata/g40
#PBS -l jobfs=120GB

## Note, run this with:
## qsub submit_ncratimemeans.sh

cd /g/data/x77/cy8964/mom6/archive 

# load conda
module use /g/data3/hh5/public/modules
module load conda/analysis3-23.04

# run
find . -type d -maxdepth 1 -exec bash -c "cd {}; bash /g/data/x77/cy8964/ISOMIP/param-paper-plots/ncra_timemeans.sh" \;
