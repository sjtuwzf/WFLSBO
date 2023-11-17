

params=$1
results=$2 

############################################################################### 
##
##Pre-processing Phase -- Generate/configure an input file for your simulation 
##  by substiting in parameter values from the Dakota paramters file.
##
###############################################################################

dprepro $params sim0.template distance.csv
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/distance.csv    ~/wzf/optimization8*8/sbo_MSMD/AEP

dprepro $params sim1S1.template fvSolution
dprepro $params sim2S1.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S1/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S1/system

dprepro $params sim1S2.template fvSolution
dprepro $params sim2S2.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S2/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S2/system

dprepro $params sim1S3.template fvSolution
dprepro $params sim2S3.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S3/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S3/system

dprepro $params sim1S4.template fvSolution
dprepro $params sim2S4.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S4/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S4/system

dprepro $params sim1S5.template fvSolution
dprepro $params sim2S5.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S5/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S5/system

dprepro $params sim1S6.template fvSolution
dprepro $params sim2S6.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S6/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S6/system

dprepro $params sim1S7.template fvSolution
dprepro $params sim2S7.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S7/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S7/system

dprepro $params sim1S8.template fvSolution
dprepro $params sim2S8.template topoSetDict 
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/fvSolution     ~/wzf/optimization8*8/sbo_MSMD/S8/system
cp ~/wzf/optimization8*8/sbo_MSMD/Dakotafiles/topoSetDict     ~/wzf/optimization8*8/sbo_MSMD/S8/system

############################################################################### 
##
## Execution Phase -- Run your simulation
##
###############################################################################


bash WFLO_driverS1.sh
bash WFLO_driverS2.sh
bash WFLO_driverS3.sh
bash WFLO_driverS4.sh
bash WFLO_driverS5.sh
bash WFLO_driverS6.sh
bash WFLO_driverS7.sh
bash WFLO_driverS8.sh

############################################################################### 
##
## Post-processing Phase -- Extract (or calculate) quantities of interest
##  from your simulation's output and write them to a properly-formatted
##  Dakota results file.
##
###############################################################################


bash WFLO_postProcess.sh
awk '{ print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/AEP/AEP.dat > $results


