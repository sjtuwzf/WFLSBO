
cd ~/wzf/optimization8*8/sbo_MSMD/AEP;

awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S1/postProcessing/totalpower/0/volRegion.dat > S1.dat;
awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S2/postProcessing/totalpower/0/volRegion.dat > S2.dat;
awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S3/postProcessing/totalpower/0/volRegion.dat > S3.dat;
awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S4/postProcessing/totalpower/0/volRegion.dat > S4.dat;
awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S5/postProcessing/totalpower/0/volRegion.dat > S5.dat;
awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S6/postProcessing/totalpower/0/volRegion.dat > S6.dat;
awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S7/postProcessing/totalpower/0/volRegion.dat > S7.dat;
awk 'END { print $NF }'  ~/wzf/optimization8*8/sbo_MSMD/S8/postProcessing/totalpower/0/volRegion.dat > S8.dat;

python calcAEP.py;
