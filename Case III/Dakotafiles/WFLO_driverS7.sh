
cd ~/wzf/MSMD_add/S7;
foamCleanTutorials;

blockMesh;

topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk1a/actuatorDisk2a/g' system/refineMeshDict;
topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk2a/actuatorDisk3a/g' system/refineMeshDict;
topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk3a/actuatorDisk4a/g' system/refineMeshDict;
topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk4a/actuatorDisk5a/g' system/refineMeshDict;
topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk5a/actuatorDisk6a/g' system/refineMeshDict;
topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk6a/actuatorDisk7a/g' system/refineMeshDict;
topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk7a/actuatorDisk8a/g' system/refineMeshDict;
topoSet; refineMesh -overwrite;
sed -i 's/actuatorDisk8a/actuatorDisk1a/g' system/refineMeshDict;
topoSet;

decomposePar;
mpirun -np 60 renumberMesh -overwrite -parallel;
mpirun -np 60 actuatorDiskExplicitForceSimpleFoam -parallel;

awk 'END { print $NF }'  ~/wzf/MSMD_add/S7/postProcessing/totalpower/0/volRegion.dat > ~/wzf/MSMD_add/AEP/S7_1.dat;

python clean.py;
sed -i 's/10.0/11.0/g' 0/U;
sed -i 's/10.0/11.0/g' 0/include/initialConditions;
decomposePar;
mpirun -np 60 renumberMesh -overwrite -parallel;
mpirun -np 60 actuatorDiskExplicitForceSimpleFoam -parallel;
awk 'END { print $NF }'  ~/wzf/MSMD_add/S7/postProcessing/totalpower/0/volRegion.dat > ~/wzf/MSMD_add/AEP/S7_2.dat;

python clean.py;
sed -i 's/11.0/12.0/g' 0/U;
sed -i 's/11.0/12.0/g' 0/include/initialConditions;
decomposePar;
mpirun -np 60 renumberMesh -overwrite -parallel;
mpirun -np 60 actuatorDiskExplicitForceSimpleFoam -parallel;
awk 'END { print $NF }'  ~/wzf/MSMD_add/S7/postProcessing/totalpower/0/volRegion.dat > ~/wzf/MSMD_add/AEP/S7_3.dat;

sed -i 's/12.0/10.0/g' 0/U;
sed -i 's/12.0/10.0/g' 0/include/initialConditions;




