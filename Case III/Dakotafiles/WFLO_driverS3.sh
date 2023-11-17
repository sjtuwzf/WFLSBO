
cd ~/wzf/MSMD_add/S3;
foamCleanTutorials;
python3 clean.py;

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

awk 'END { print $NF }'  ~/wzf/MSMD_add/S3/postProcessing/totalpower/0/volRegion.dat > ~/wzf/MSMD_add/AEP/S3.dat;

