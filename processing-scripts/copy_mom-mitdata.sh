#!/bin/bash
#PBS -N process-ncra
#PBS -P x77
#PBS -q copyq
#PBS -l walltime=2:00:00
#PBS -l mem=30GB
#PBS -l ncpus=1
#PBS -l storage=gdata/v45+gdata/hh5+gdata/cj50+gdata/ik11+scratch/x77+gdata/x77+gdata/e14+gdata/g40
#PBS -l jobfs=120GB

## Note, run this with:
## qsub copy_mom-mitdata.sh

cd /g/data/x77/cy8964/mom6/archive 
mkdir -p /scratch/x77/cy8964/save-stratfeedback-data/isomip-mom6
mkdir -p /scratch/x77/cy8964/save-stratfeedback-data/isomip-mitgcm
mkdir -p /scratch/x77/cy8964/save-stratfeedback-data/isomip-mitgcm

cp -r /g/data/x77/cy8964/mom6/archive/ /scratch/x77/cy8964/save-stratfeedback-data/isomip-mom6
cp -r /g/data/x77/cy8964/mitgcm/archive/*warm* /scratch/x77/cy8964/save-stratfeedback-data/isomip-mitgcm
cp -r /g/data/x77/cy8964/mitgcm/archive/*cold* /scratch/x77/cy8964/save-stratfeedback-data/isomip-mitgcm


