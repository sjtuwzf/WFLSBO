
cd ~/wzf/MSMD_terrains/S6;
foamCleanTutorials;
python clean.py;

blockMesh;

snappyHexMesh -overwrite;
topoSet;

decomposePar;

mpirun -np 60 renumberMesh -overwrite -parallel;
mpirun -np 60 actuatorDiskExplicitForceSimpleFoam -parallel;






