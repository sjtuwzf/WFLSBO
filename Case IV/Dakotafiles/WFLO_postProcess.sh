
cd ~/wzf/MSMD_terrains/AEP;

awk '{ print $NF }'  ~/wzf/MSMD_terrains/Dakotafiles/TotalPower.dat > TotalPower.csv;
awk 'END { print $NF }'  ~/wzf/MSMD_terrains/S2/postProcessing/actuatorDisk8/0/volRegion.dat > S2.dat;
awk 'END { print $NF }'  ~/wzf/MSMD_terrains/S3/postProcessing/actuatorDisk8/0/volRegion.dat > S3.dat;
awk 'END { print $NF }'  ~/wzf/MSMD_terrains/S4/postProcessing/actuatorDisk8/0/volRegion.dat > S4.dat;
awk 'END { print $NF }'  ~/wzf/MSMD_terrains/S5/postProcessing/actuatorDisk8/0/volRegion.dat > S5.dat;
awk 'END { print $NF }'  ~/wzf/MSMD_terrains/S6/postProcessing/actuatorDisk8/0/volRegion.dat > S6.dat;
awk 'END { print $NF }'  ~/wzf/MSMD_terrains/S7/postProcessing/actuatorDisk8/0/volRegion.dat > S7.dat;
awk 'END { print $NF }'  ~/wzf/MSMD_terrains/S8/postProcessing/actuatorDisk8/0/volRegion.dat > S8.dat;

python3 calcAEP.py;
