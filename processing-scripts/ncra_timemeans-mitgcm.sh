#!/bin/sh

#reqs: 
# module use /g/data3/hh5/public/modules
# module load conda/analysis3
#usage:
# find *warm* -maxdepth 0 -type d -exec bash -c "cd {}; bash /g/data/x77/cy8964/ISOMIP/param-paper-plots/ncra_timemeans-mitgcm.sh" \;

pwd

ncra -d T,185,364 output001/shelfsnap.nc output001/shelfsnap_steadymean.nc
ncra -d T,185,364 output001/shelfice_tave.nc output001/shelfice_tave_steadymean.nc
ncra -d T,185,364 output001/tave.nc output001/tave_steadymean.nc
