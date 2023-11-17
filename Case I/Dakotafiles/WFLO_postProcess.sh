
cd ~/wzf/optimization8*8/sbo_OSOD/AEP;

awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_OSOD/basefiles/postProcessing/totalpower/0/volRegion.dat > power.dat;

python calcAEP.py;
