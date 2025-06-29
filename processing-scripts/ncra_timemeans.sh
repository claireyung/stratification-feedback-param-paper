#!/bin/sh

#reqs: 
# module use /g/data3/hh5/public/modules
# module load conda/analysis3
#usage:
# find . -type d -maxdepth 1 -exec bash -c "cd {}; bash /g/data/x77/cy8964/ISOMIP/param-paper-plots/ncra_timemeans.sh" \;

pwd

ncra -d time,550,729 output000/ocean_daily_z.nc output000/ocean_daily_z_steadymean.nc
ncra -d Time,185,364 output000/prog__0002_002.nc output000/prog_steadymean.nc
ncra -d time,18,23 output000/ocean_month_rho2.nc output000/ocean_month_rho2_steadymean.nc

