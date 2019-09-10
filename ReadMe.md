[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.3404206.svg)](http://dx.doi.org/10.5281/zenodo.3404206)



This repository contains data and analysis scripts for the manuscript:

## Coral reef resilience to thermal stress in the Eastern Tropical Pacific
#### Authors: Mauricio Romero-Torres, Alberto Acosta, Eric A. Treml, Fernando A. Zapata, David A. Paz-García, Ana M. Palacio-Castro and James W. Porter
#### Journal: _Global Change Biology_ [doi:XXX](http://dx.doi.org/XXX)  

-----

### Description:
This work uses 44-year trend of live ETP coral cover (1970–2014), and SST data obtained from NOAA High-resolution Blended Analysis (OISST):

* to assess whether ETP reefs are following the global decline caused by extreme El Niño events, and 
* to test if ETP live coral-cover rate of change depends on the maximum Degree Heating Weeks experienced by these reefs.

### Contents:
#### Scripts:
* **Coral_cover_analysis.Rmd:** R script that imports data to be used in the analysis (coral cover, DHW, and Rate of coral cover), runs the data analyses, and produces the results, figures and supplementary figures presented in the manuscript.

#### Data:
* **Data/Coral_Cover_ETP.csv:** Complete data set of coral cover in the different study sites, including references, dates and coordinates.

* **Data/maxDHW.csv:** Data set containing the maximum DHW and SST experienced in the study sites from 1982 to 2014. 
This dataset only includes locations that have coral cover data for consecutive years, and therefore could be used to
estimate the rate of change of coral cover.

* **Data/RoC_DWH.csv:** Data set with coral cover rate of change per site, per year, and asociated DHW.

</br>

#### DHW: Directory containing the data files and scripts used to extract OISST data and calculate DHW.
You do not have to run the code in the DHW folder to produce the data analysis in the paper (this can be achieved by running "Coral_cover_analysis.Rmd"). However, you could use these scripts to retrieve the SST data (.nc files from NOAA) or to verify the calculation of DHW based on the SST data. 
The outputs of these scripts are already included in the "Data/DHW.csv" and "Data/RoC_DWH.csv" files. By running the scripts inside this folder you will create those files again but they will be placed in the "DHW/Output/" folder

You would need ~ 18G of free space

##### Scripts
* **DHW/1.Get_OISST_files.sh:** Shell script to automatically download the OISST data (NOAA High-resolution Blended Analysis) from ftp.cdc.noaa.gov/Datasets/noaa.oisst.v2.highres/ for the period 1981-2014

* **DHW/2.DHW_calculation.Rmd:** R script to extract the daily SST data from the study sites, calculate DHW, and extract maximum annual SST and DHW in each location.

##### Data
* **DHW/Data/Coordinates.csv:** File containing the coordinates of the study sites in the same format as the .nc files (i.e. decimal degrees, lat: -90 to 90; lon: 0 to 360)

##### Output:
* **DHW/Output/**: Directory containing the files produced by the DHW analysis (script "2.DHW_calculation.Rmd")
