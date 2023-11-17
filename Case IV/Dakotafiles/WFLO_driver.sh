
#params=$1
#results=$2

############################################################################### 
##
##Pre-processing Phase -- Generate/configure an input file for your simulation 
##  by substiting in parameter values from the Dakota paramters file.
##
###############################################################################


dprepro params.in sim0.template distance.csv


dprepro params.in sim1S1.template fvSolution
dprepro params.in sim2S1.template topoSetDict
dprepro params.in sim3S1.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S1/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S1/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S1/system

dprepro params.in sim1S2.template fvSolution
dprepro params.in sim2S2.template topoSetDict
dprepro params.in sim3S2.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S2/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S2/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S2/system

dprepro params.in sim1S3.template fvSolution
dprepro params.in sim2S3.template topoSetDict
dprepro params.in sim3S3.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S3/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S3/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S3/system

dprepro params.in sim1S4.template fvSolution
dprepro params.in sim2S4.template topoSetDict 
dprepro params.in sim3S4.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S4/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S4/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S4/system

dprepro params.in sim1S5.template fvSolution
dprepro params.in sim2S5.template topoSetDict
dprepro params.in sim3S5.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S5/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S5/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S5/system

dprepro params.in sim1S6.template fvSolution
dprepro params.in sim2S6.template topoSetDict
dprepro params.in sim3S6.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S6/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S6/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S6/system

dprepro params.in sim1S7.template fvSolution
dprepro params.in sim2S7.template topoSetDict
dprepro params.in sim3S7.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S7/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S7/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S7/system

dprepro params.in sim1S8.template fvSolution
dprepro params.in sim2S8.template topoSetDict 
dprepro params.in sim3S8.template snappyHexMeshDict
cp ~/wzf/MSMD_terrains/Dakotafiles/fvSolution     ~/wzf/MSMD_terrains/S8/system
cp ~/wzf/MSMD_terrains/Dakotafiles/topoSetDict     ~/wzf/MSMD_terrains/S8/system
cp ~/wzf/MSMD_terrains/Dakotafiles/snappyHexMeshDict     ~/wzf/MSMD_terrains/S8/system

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



