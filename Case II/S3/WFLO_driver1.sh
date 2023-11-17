 # copyright (c) 2019 ASandip
 #This program is free software: you can redistribute it and/or 
 # modify it under the terms of the GNU General Public License as 
 # published by the Free Software Foundation, either version 3 of the License, or
 # (at your option) any later version.
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 
 # You should have received a copy of the GNU General Public License
 # along with this program.  If not, see <https://www.gnu.org/licenses/>.

#!/bin/bash

#Step 1: Source OpenFOAM environment
foamCleanTutorials;
python clean.py;
#Step 2: Generate mesh
blockMesh;
#Step 3: refine mesh
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
#Step 4: decompose
decomposePar;
#Step 5: Run openFoam files
mpirun -np 36 renumberMesh -overwrite -parallel;
mpirun -np 36 actuatorDiskExplicitForceSimpleFoam -parallel;
