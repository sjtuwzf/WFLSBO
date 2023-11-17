
params=$1
results=$2

############################################################################### 
##
##Pre-processing Phase -- Generate/configure an input file for your simulation 
##  by substiting in parameter values from the Dakota paramters file.
##
###############################################################################


dprepro $params sim0.template distance.csv
cp ~/wzf/optimization8*8/sbo_OSOD/Dakotafiles/distance.csv    ~/wzf/optimization8*8/sbo_OSOD/AEP

dprepro params.in.191 sim1.template fvSolution
dprepro params.in.191 sim2.template topoSetDict


cp ~/wzf/optimization8*8/sbo_OSOD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_OSOD/basefiles/system
cp ~/wzf/optimization8*8/sbo_OSOD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_OSOD/basefiles/system

############################################################################### 
##
## Execution Phase -- Run your simulation
##
###############################################################################

bash WFLO_driver1.sh


############################################################################### 
##
## Post-processing Phase -- Extract (or calculate) quantities of interest
##  from your simulation's output and write them to a properly-formatted
##  Dakota results file.
##
###############################################################################


bash WFLO_postProcess.sh
