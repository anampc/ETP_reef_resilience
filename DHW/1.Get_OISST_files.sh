#!/bin/bash

# Obtain SST data from NOAA OI SST V2 High Resolution Dataset
# Needs ~18G of free space 

# Go to the script directory
	cd "${0%/*}"

# Make a folder for the .nc files and navigate to it
	mkdir Daily_OISST_v2
	cd Daily_OISST_v2/


# Get the SST data from the 1981-2014 period from the NOAA dataset
# ftp://ftp.cdc.noaa.gov/Datasets/noaa.oisst.v2.highres/

for i in `seq 1981 2014`; do wget "ftp://ftp.cdc.noaa.gov/Datasets/noaa.oisst.v2.highres/sst.day.mean.$i.nc" ./; done

