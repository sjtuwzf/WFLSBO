
cd ~/wzf/optimization8*8/sbo_MSMD/S2;
foamCleanTutorials;
python clean.py;

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
mpirun -np 36 renumberMesh -overwrite -parallel;
mpirun -np 36 actuatorDiskExplicitForceSimpleFoam -parallel;



